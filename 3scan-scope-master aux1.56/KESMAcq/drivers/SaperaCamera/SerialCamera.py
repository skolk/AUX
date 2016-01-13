import time

from KESMAcq.shared.SerialConnection import SerialConnection, SerialCommandFailure


class BaseCameraSerialConnection(SerialConnection):
    requestEndline = b"\r"  # This gets appended to all requests that we send

    def __init__(self, paths, ports={"COM1", "COM2", "COM3", "COM4"}, bauds=[115200, 9600]):
        SerialConnection.__init__(self, paths, ports, bauds)

        if self.serialObject.baudrate == 9600:
            self.logger.warn("Camera Baud rate reset to 9600.  Possible power loss?")
            self._upBaudRate()

        # Set the self.modelNumber and self.serialNumber attributes
        # This can take 3-4 seconds, so we do it once and store the result
        self._detectCameraType()

    def flush(self):
        """Called by _clearReadBuffer before clearing it."""
        self._sendCommand("")
        time.sleep(0.1)

    def _isReplyComplete(self, recvBytes):
        """All camera responses must end with '>'."""
        return recvBytes.endswith(b">")

    def _parseReply(self, reply):
        # reply is a bytes object, but let's deal with strings internally
        string = reply.decode()

        # All camera returns should end with ">"
        if not string.endswith(">"):
            self.logger.warn("Failed Serial communication:'" + string + "'")
            return string, False

        # The last cr/lf seperates the data back from the result
        splitPoint = string.rfind("\r\n")
        if splitPoint == -1:
            data = ''
            response = string.strip()
        else:
            data = string[:splitPoint].strip()
            response = string[splitPoint:].strip()

        # Logic that converts error and warnings from serial
        # Into the corresponding error or warning log messages
        if ("OK" in response) or ("USER" in response):
            success = True
        elif ("Error" in response) or ("???" in response):
            self.logger.error(string)
            success = False
        elif "Warning" in response:
            self.logger.warn(string)
            success = False
        else:
            self.logger.error("Don't know how to process serial response:'%s'" % string)
            success = False

        return data, success

    def _checkTempDumb(self):
        '''A (camera-agnostic) check for the existence of a listening
        party on the other side of the current serial connection'''
        # Send a get temp command, and make sure it comes back with a '>'
        # TAB TODO: simplify this by calling executeCommand()
        self._sendCommand("vt")
        receivedBytes, success = self._receiveReply(0.25)
        return success and self._isReplyComplete(receivedBytes)

    def testConnection(self):
        # Make sure were clear any misc data on the wire
        # (sometimes garbage from wrong speed previous connection)
        self._clearReadBuffer()

        # This will work for TDI and initialized p4 cameras
        if self._checkTempDumb():
            return True

        # The p4 cameras need an escape key input to start ascii mode
        # after a power cycle has occured, afterwhich they barf gcp
        # and a prompt ignore all of that and rerun the dumb check
        self._clearReadBuffer()
        self._sendCommand(chr(27))

        time.sleep(0.1)
        self._clearReadBuffer()

        return self._checkTempDumb()

    def _detectCameraType(self):
        try:
            results = self.executeCommand("gcp", timeout=5)
        except SerialCommandFailure:
            readSuccess = False
        else:
            readSuccess = True

        resultIsPlausible = ("Model" in results) and ("Serial" in results)

        if (not readSuccess) or (not resultIsPlausible):
            self.logger.error("Serial Camera detection is likely failing!")
            print("Failure during serial camera detection. Comm dump follows:")
            print(repr(results))

        # MRG NB: Below is likely brittle to changes in the future.
        # Pirana3 and Pirana4 camers have slightly different formatting,
        # But the below parsing scheme is confirmed working for all cameras
        # owned by 3Scan as of 5/8/2014
        responseLines = results.splitlines()
        modelNumberLine = [line for line in responseLines if "Model" in line][0]
        serialNumberLine = [line for line in responseLines if "Serial" in line][0]

        model = modelNumberLine.strip().split()[-1]
        serial = serialNumberLine.strip().split()[-1]

        self.modelNumber, self.serialNumber = model, serial

    def getCameraModel(self):
        return self.modelNumber

    def getCameraSerial(self):
        return self.serialNumber

    def rebootCamera(self):
        '''Reboot the camera and reset the serial connection'''
        self.executeCommand("rc")
        self.reconnect()

    def reconnect(self):
        self.serialObject.close()
        time.sleep(0.5)
        # Always use the fast baudrate to reconnect.
        self._connect([self.port], [115200])

    def _upBaudRate(self):
        self.executeCommand("sbr 115200")
        self.reconnect()

    def setTestPattern(self, testPatternName):
        decoder = {"off": 0, "ramp": 1}
        self.executeCommand("svm %i" % decoder[testPatternName])


class TDISerialCamera(BaseCameraSerialConnection):
    def setCameraMode(self, requestedMode):
        '''This command can be used to switch the camera between the two
        different available imaging modes.  Allowed modes are "area" and "tdi"'''
        modeDecoder = {"area": 0, "tdi": 1}
        self.executeCommand("tdi %i" % modeDecoder[requestedMode])
        self.logger.info("Camera Mode Changed to " + requestedMode)

    def getValidGainRange(self):
        return (-10, 10)

    def setLineTriggerSource(self, sourceName):
        '''Use "internal" if using the cameras internal clock
           for the line timing. Use "external" if you want to
           syncronize with a quadrature signal.'''
        if sourceName == "internal":
            self.executeCommand("sem 7")
        elif sourceName == "external":
            self.executeCommand("sem 3")
        else:
            raise RuntimeError("Source muste be internal/external")

    def setAnalogGainAll(self, gain):
        '''Set the analog gain of the whole camera in decibles.
           Valid range is -10 to 10dB'''
        self.executeCommand("sag 0 %i" % gain)

    def getQuadFrequency(self):
        '''Measure the received quadrature signal.  This is a good
           way to test whether all the wiring and output signals are
           coming through properly'''

        try:
            freq = self.executeCommand("gsf 1", timeout=5)
        except SerialCommandFailure:
            return -1

        # If there is no quadrature signal the
        # received response looks like 'CC1 stuck at:0'
        if "stuck" in freq:
            return 0
        else:
            # Otherwise response is a floating point number
            return float(freq.strip().split()[-2])

    def getPixelSize(self):
        return 7.0

    def setIntegrationStages(self, stages):
        self.executeCommand("stg %i" % stages)

    def getTemp(self):
        '''Get the temperature of the camera in
           degrees celcius.  Returned as a float.'''
        try:
            tempString = self.executeCommand("vt")
        except SerialCommandFailure:
            return -1

        # Data comes back like 'Internal Camera Temperature: XX.X Celcius', so . . .
        return float(tempString.split()[-2])


class P4SerialCamera(BaseCameraSerialConnection):
    def setCameraMode(self, requestedMode):
        # MRG TODO: Determine what to do if focus mode is not available
        pass

    def getValidGainRange(self):
        return (1, 10)

    def setAnalogGain(self, gain):
        self.executeCommand("sag 0 f%i" % gain)

    def setLineTriggerSource(self, internalTriggerState):
        if internalTriggerState is "internal":
            self.executeCommand("stm 0")
        elif internalTriggerState is "external":
            self.executeCommand("stm 1")
        else:
            raise RuntimeError("Trigger state must be internal or external")

    def getQuadFrequency(self):
        try:
            infoDump = self.executeCommand("gcp")
        except SerialCommandFailure:
            self.logger.warn("GCP failed, so line-clock measurement may be inaccurate!")

        lines = infoDump.split("\r\n")
        for n, line in enumerate(lines):
            if "Meas L.R." in line:
                return float(line.split()[2])

        # MRG TODO: can be scraped from gcp command
        return -1

    def getPixelSize(self):
        return 10.56

    def getTemp(self):
        try:
            result = self.executeCommand("vt")
        except SerialCommandFailure:
            self.logger.warn("Check temperature call failed:" + result)
            return -1

        return float(result)


class BilinearSerialCamera(P4SerialCamera):
    pass


class TrilinearSerialCamera(P4SerialCamera):
    def autoWhiteBalance(self):
        try:
            txt = self.executeCommand("awb")
        except SerialCommandFailure:
            self.logger.warn("Auto White Balance Failure: " + txt)
        else:
            self.logger.info("Auto White Balance Success: " + txt)

modelToClass = ({"HS-80-04K40-00-R": TDISerialCamera,
                 "HS-80-08K80-00-R": TDISerialCamera,
                 "P4_CM_04K10D_00_R": BilinearSerialCamera,
                 "P4_CC_04K07T_00_R": TrilinearSerialCamera})


def getCameraSerialInterface(paths, port):
    # Open with the base class to do identification
    baseCamera = BaseCameraSerialConnection(paths, ports=[port])
    model = baseCamera.getCameraModel()

    # Get the port and baud settings to shortcut re-detection
    ports = [baseCamera.port]
    bauds = [baseCamera.baudRate]

    # Close it out, and chill for a second to avoid other connection
    baseCamera.serialObject.close()
    del baseCamera
    time.sleep(0.5)

    # Open with the specific instance of the class
    return modelToClass[model](paths, ports=ports, bauds=bauds)
