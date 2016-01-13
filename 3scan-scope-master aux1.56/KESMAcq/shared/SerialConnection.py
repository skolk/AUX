import time, itertools
from threading import Lock
import serial

from KESMAcq.shared import toBytes
from .Printer import Printer
from .ZMQLogger import ZMQLogger


class SerialCommandFailure(RuntimeError):
    pass


class SerialConnectionFailure(RuntimeError):
    pass


class SerialConnection(object):
    """
    General serial port connection class for use with simple protocols.
    """
    requestEndline = b"\n"  # this gets appended to all commands we send.

    def __init__(self, paths, ports, bauds):
        """
        Create the object, set up its logger, and try to connect
        to the supplied set of ports and bauds.
        """
        self.className = self.__class__.__name__
        self.logger = ZMQLogger.createFromPaths(paths, self.className)
        self._dbPrint = Printer(debugPrint=False)

        self.serialObject = None
        self.serialLock = Lock()
        self._connect(ports, bauds)

    def _connect(self, ports, bauds):
        for settings in itertools.product(ports, bauds):
            # Try making a connection with the current settings
            if self._tryConnectAtSpeed(*settings):
                self.port, self.baudRate = settings
                self.logger.info("Serial Connection Successful to %s at %i baud" % settings)
                return
            else:
                self.logger.detail("Failed to connect to %s at %i baud." % settings, printLocal=False)

        errorMsg = '''Failed to connect to serial port at any speed!
                      Please check that the device is configured/powered/connected.'''
        self.logger.raiseError(errorMsg, SerialConnectionFailure)

    def _tryConnectAtSpeed(self, port, baudRate):
        # If there was a connection before (or attempt) close
        # And give time to hangup
        if self.serialObject:
            self.logger.detail("Closing previous serial connection.", printLocal=False)
            self.serialObject.close()
            time.sleep(0.1)

        # Make a serial instance
        try:
            self.serialObject = serial.Serial(port=port, baudrate=baudRate)
        # Catch serial errors.
        # This is typically thrown when port is in use, ie there is duplicate instances
        # Of the KESM thread, or the last instance hasn't finshed its GC after exiting
        except (serial.serialutil.SerialException) as excpt:
            self.logger.detail("Serial error caught:" + str(excpt), printLocal=False)
            return False

        # Give the serial line a chance to settle
        time.sleep(0.1)
        return self.testConnection()

    def testConnection(self):
        """
        Test the validity of the connection.
        Should return True if valid, and False otherwise.
        """
        return True

    def executeCommand(self, cmd, timeout=2, maxAttempts=3):
        """
        Execution of a command consists of sending a command, and
        recieving a reply.  During this transaction, there is a lock
        placed on the serial port so that other async calls do not
        interrupt the command stream. Returns the parsed version
        of the response, or throws a SerialCommandFailure
        exception.
        """

        with self.serialLock:
            for attemptNumber in range(maxAttempts):
                self._clearReadBuffer()
                self._sendCommand(cmd)
                recvBytes, recvSuccess = self._receiveReply(timeout)

                # We need to successfully receive and parse the reply.
                # Otherwise, sleep a bit and try again.
                if recvSuccess:
                    data, parseSuccess = self._parseReply(recvBytes)
                    if parseSuccess:
                        return data

                    time.sleep(0.1)

        errorMessage = 'Tried "%s" command %i times, giving up.' % (cmd, maxAttempts)
        self.logger.raiseError(errorMessage, SerialCommandFailure)

    def _sendCommand(self, cmd):
        """
        Send a Python string or bytestring over the serial port.
        This command appends self.requestEndline to the command
        automatically.
        """
        self._dbPrint("[cpu --> " + self.className + "]", cmd)
        self.serialObject.write(toBytes(cmd) + self.requestEndline)

    def flush(self):
        pass

    def _clearReadBuffer(self):
        # Check if anything is lingering
        if self.serialObject.inWaiting() == 0:
            return

        # Do a more complete flush if necessary (no-op by default)
        self.flush()

        # Read out any remaining buffer from previous commands
        cleared = self.serialObject.read(self.serialObject.inWaiting())
        self._dbPrint("Cleared %s bytes from buffer" % len(cleared))

    def _receiveReply(self, timeout):
        """
        Reads a single reply from the serial object.
        Returns the bytestring of the reply and a boolean
        indicating the success of the operation.
        """
        startTime = time.time()
        receivedBytes = b""

        while time.time() - startTime <= timeout:
            if self.serialObject.inWaiting() > 0:
                receivedBytes += self.serialObject.read(1)
                continue

            if self._isReplyComplete(receivedBytes):
                self._dbPrint("[" + self.className + " --> cpu]", receivedBytes)
                return receivedBytes, True

        self.logger.warn("Timeout waiting for reply.  Only got: " + str(receivedBytes))
        self._dbPrint("[" + self.className + " --> cpu]", receivedBytes)
        return receivedBytes, False

    def _isReplyComplete(self, reply):
        """
        Must be overridden by subclass.
        Should return True if reply is complete and False otherwise.
        """
        raise NotImplemented

    def _parseReply(self, reply):
        """
        Must be overridden by subclass.
        Try to parse a reply bytestring into something useful.
        Must return (data, success), where success is a boolean.
        """
        raise NotImplemented
