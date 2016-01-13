import struct, time

import serial.tools.list_ports

from KESMAcq.shared import toStr
from KESMAcq.shared.SerialConnection import SerialConnection, SerialConnectionFailure, SerialCommandFailure

ERROR_STATES = [
    'OK',
    'ERROR_UNKNOWN_ERROR',
    'ERROR_SAFETY_LIMIT',
    'ERROR_HOMING_LIMIT',
    'ERROR_MALFORMED_COMMAND',
    'ERROR_OUT_OF_RANGE',
    'ERROR_PATH_TIMEOUT',
    'ERROR_PATH_INVALID',
    'ERROR_TEMP_FAULT',
    'ERROR_FLOW_INVALID'
]

# We always serialize and deserialize little-endian.
BYTE_ORDER = 'little'

RESPONSE_TYPE_LENGTH = 4
DL = b':'  # the delimiter between response type and response data
RESPONSE_DATA_LENGTH = 4
RESPONSE_ENDLINE = b"\n"
RESPONSE_LENGTH = RESPONSE_TYPE_LENGTH + len(DL) + RESPONSE_DATA_LENGTH + len(RESPONSE_ENDLINE)


class AuxSerial(SerialConnection):
    requestEndline = b"\n"  # This gets appended to all commands we send

    def __init__(self, paths):
        # This will be None if there isn't an override in the paths.
        overridePort = paths.KESMMain.toDict().get('auxPort')

        if overridePort is not None:
            ports = [overridePort]
        else:
            # The list_ports command returns an iterator of tuples, where the first
            # element in the tuple is the name of the port, e.g. "COM3"
            ports = [portTuple[0] for portTuple in serial.tools.list_ports.grep('arduino')]
            if len(ports) == 0:
                raise SerialConnectionFailure('No connected arduinos.')
            elif len(ports) > 1:
                raise SerialConnectionFailure('Multiple arduinos connected at ports: ' + str(ports))

        # Now that we have the port, call superclass init, which connects
        SerialConnection.__init__(self, paths, ports=ports, bauds=[9600])

        # Set the path to NORMAL on startup.
        self.setCapture(False)

    def testConnection(self):
        # This sleep is crucial. The arduino will somehow get screwed up otherwise,
        # and won't even respond to later commands!
        time.sleep(1)
        versionString = self.readValue('PING',
                                       valueIfError="UNKNOWN",
                                       dtype=str,
                                       timeout=5,
                                       maxAttempts=1)

        # The connection is bad if the previous command fails and returns its
        # `valueIfError` value.
        if versionString == "UNKNOWN":
            return False

        self.logger.info("Using auxbox firmware version: " + versionString)
        return True

    def _isReplyComplete(self, recvBytes):
        return len(recvBytes) == RESPONSE_LENGTH

    def _parseReply(self, response):
        isDelimiterAligned = response[RESPONSE_TYPE_LENGTH] == ord(DL)
        isEndlineAligned = response[-len(RESPONSE_ENDLINE):] == RESPONSE_ENDLINE

        if not (isDelimiterAligned and isEndlineAligned):
            # Try to let the buffer fill up with the rest of the response before
            # clearing the buffer. This should maximize the chance that we re-align.
            time.sleep(0.01)
            self._clearReadBuffer()
            self.logger.error("Response from microcontroller misaligned. " +
                              "Received: " + str(response))
            return response, False

        # The first part of the response, indicating the data type, like b"NSTP"
        responseType = response[:RESPONSE_TYPE_LENGTH]

        # The second part of the response, containing a 4-byte float
        dataStartIndex = RESPONSE_TYPE_LENGTH + len(DL)
        dataEndIndex = dataStartIndex + RESPONSE_DATA_LENGTH
        responseDataChars = response[dataStartIndex:dataEndIndex]

        return (responseType, responseDataChars), True

    def readValue(self, cmd, dtype=float, valueIfError=None, **kwargs):
        # Conversion functions for different data types
        # Note that int values are transmitted as floats, so we call
        # the float converter first for the int converter.
        converters = {}
        converters[float] = lambda chars: struct.unpack('f', chars)[0]
        converters[int] = lambda chars: struct.unpack('i', chars)[0]
        converters[str] = lambda chars: chars.decode()

        try:
            responseType, dataChars = self.executeCommand(cmd, **kwargs)
        except SerialCommandFailure:
            self.logger.error("Communication failure during %s command" % cmd)
            return valueIfError

        if responseType == b"ERRR":
            errorNum = converters[int](dataChars)
            self.logger.error("Error from microcontroller: " + ERROR_STATES[errorNum])
            return valueIfError

        assert toStr(responseType) == toStr(cmd), "Mismatched response types: '%s' vs. '%s'. This should never happen ever." % (str(responseType), str(cmd))

        return converters[dtype](dataChars)

    def decodeCaptureBitMask(self, bitMask):
        pump = bool(bitMask >> 31)
        solenoid = bool(bitMask >> 30)
        valve1 = bool(bitMask >> 29)
        valve2 = bool(bitMask >> 28)
        valve3 = bool(bitMask >> 27)
        unset = bool(bitMask >> 26)

        return (pump, solenoid, valve1, valve2, valve3, unset)

    def getTemp(self):
        # TAB TODO: fix this by returning something if we error out
        return self.readValue("TEMP", valueIfError=-273.15, timeout=0.5)

    def getFlow(self):
        return self.readValue("FLOW", valueIfError=-1.0, timeout=0.5)

    def startFlow(self):
        self.executeCommand("STRT")

    def stopFlow(self):
        self.executeCommand("STOP")

    def getPump(self):
        bitMask = self.readValue("PUMP", dtype=int, valueIfError=-1)
        return self.decodeCaptureBitMask(bitMask)[0]

    def setPump(self, pumpSetting):
        if pumpSetting:
            self.executeCommand("PONN")
        else:
            self.executeCommand("POFF")

    def setCapture(self, captureSetting):
        if captureSetting:
            self.executeCommand("CPT1")
        else:
            self.executeCommand("CPT0")

    def getCapture(self):
        # TAB TODO: decode the bitmask on this one and return something useful
        bitMask = self.readValue("CAPT", dtype=int, valueIfError=-1)
        _, _, valve1, valve2, valve3, unset = self.decodeCaptureBitMask(bitMask)
        if unset:
            return False

        return valve1 and valve2 and not valve3

    def openCloseValve(self, valveNum, open):
        cmd = ("OPN" if open else "CLS") + str(valveNum)
        self.executeCommand(cmd)

    def killCapture(self):
        self.executeCommand("HOLD")

    def home(self):
        self.executeCommand("HOME", timeout=60, maxAttempts=1)

    def zero(self):
        self.executeCommand("ZERO", maxAttempts=1)

    def getSafetySwitch(self):
        return self.readValue("SWSF", dtype=int, valueIfError=-1)

    def getHomingSwitch(self):
        return self.readValue("SWHM", dtype=int, valueIfError=-1)

    def setSteps(self, nsteps):
        nstepCmd = nsteps.to_bytes(2, byteorder=BYTE_ORDER)
        self.executeCommand(b"ST" + nstepCmd, timeout=25, maxAttempts=1)

    def getSteps(self):
        return self.readValue("NSTP", dtype=int, valueIfError=-1)
