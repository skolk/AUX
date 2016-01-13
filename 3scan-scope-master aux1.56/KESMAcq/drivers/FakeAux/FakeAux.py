import time, random

from KESMAcq.shared.Printer import Printer
from KESMAcq.shared.ZMQLogger import ZMQLogger


class Aux(object):
    """An object that pretends to be an auxbox."""
    def __init__(self, zmqLog):
        self.log = ZMQLogger("[SIM]AuxSerial", zmqLog)
        self.debug = True
        self._dbPrint = Printer(debugPrint=self.debug)

        self.steps = 0
        self.path = 0  # This can be 0 for normal, 1 for capture, or 2 for divert
        self.temperature = 21.0  # Let's just say it's room temperature in Celsius
        self.flow = 10.0  # TAB TODO: make this a believable value.  Stab in the dark here.

        self.log.info("Initialized fake aux.")

    def getTemp(self):
        # Jitter the temperature by a quarter degree on average
        return self.temperature + random.gauss(0, 0.25)

    def getFlow(self):
        # Jitter the flow by one flow unit on average
        # TAB TODO: make the jitter a realistic amount
        return self.flow + random.gauss(0, 1)

    def getPath(self):
        return self.path

    def setPath(self, pathNum):
        # Simulate the solenoids switching
        time.sleep(0.1)
        self.path = pathNum

    def home(self):
        time.sleep(self.steps / 1000)
        # Jitter it by a step or so on average
        self.steps += int(random.gauss(0, 1))

    def setSteps(self, newLocation):
        """This blocks, just like the real thing."""
        self.log.info('Moving lens to new location: %i' % newLocation)
        time.sleep(abs(newLocation - self.steps) / 1000)
        self.steps = newLocation

    def getSteps(self):
        return self.steps

    def stopFlow(self):
        pass

    def startFlow(self):
        pass

    def setPump(self, state):
        pass

    def getPump(self):
        pass

    def getCapture(self):
        pass

    def setCapture(self, state):
        pass

    def executeCommand(self, command):
        pass
