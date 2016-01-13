from KESMAcq.shared.Printer import dbPrint
from KESMAcq.shared.ZMQLogger import ZMQLogger


class SerialCamera(object):
    def __init__(self, paths, port="COM1", br=9600):
        self.paths = paths
        self.serialLog = ZMQLogger.createFromPaths(self.paths, "[SIM]CameraSerial")

        self.br = br
        self.port = port
        self.connected = False
        self.quadFrequency = 0
        self.trigger = True

        self.s = None
        self.connect()

        if self.br == 9600:
            self.serialLog.detail("Camera Baud rate reset to 9600.  Possible power loss?")
            dbPrint("[SIM] Attempting to increase baud (it's gonna work!)")
            self.upBaudRate()

        self.serialLog.info('Serial Camera initialized.')

    def connect(self):
        self.connected = True
        # don't try all the baud rates, just go with the one we're passed in
        self.serialLog.detail("[SIM] Serial Connection Successful at %i baud rate" % self.br)

    def setCameraMode(self, mode):
        self.serialLog.info("[SIM] Set serial camera to mode: " + mode)
        self.mode = mode

    def clearReadBuffer(self):
        pass

    def testConnection(self):
        self.clearReadBuffer()

        return True

    def reconnect(self):
        pass

    def upBaudRate(self):
        self.br = 115200

    def executeCommand(self, cmd):
        pass

    def sendCommand(self, cmd):
        pass

    def setAnalogGainAll(self, gain):
        self.executeCommand("sag 0 %i" % gain)

    def rebootCamera(self):
        pass

    def getTemp(self):
        return 50.0

    def getQuadFrequency(self):
        return self.quadFrequency

    def setTestPattern(self, patternOn):
        pass

    def getDataLine(self):
        return []

    def getPixelSize(self):
        return 0.7 * 10.0

    def getCameraModel(self):
        return 'SIMULATOR'

    def getCameraSerial(self):
        return 'SIMULATOR'

    def setLineTriggerSource(self, triggerSource):
        self.trigger = triggerSource
