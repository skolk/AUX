import random, time

from queue import Queue
from threading import Thread, Timer

import numpy as np
from numpy import linalg

from KESMAcq.drivers.abstract import AbstractStage
from KESMAcq.shared.Printer import Printer


js_time = lambda: time.time() * 1000


def delay(delayMS):
    '''Decorator generator to delay the running of a function'''
    delayTime = delayMS / 1000

    def decorator(func_to_decorate):
        def wrapper(*args, **kwargs):
            Timer(delayTime, func_to_decorate, args=args, kwargs=kwargs).start()
        wrapper.__doc__ = func_to_decorate.__doc__
        wrapper.__name__ = func_to_decorate.__name__
        return wrapper
    return decorator


# TAB NOTE: This is copied from the A3200 stage.  Make sure to change as necessary.
DATA_SIGNALS = [{
    'signalType': 'PositionCommand',
    'signalNum': 1,
    'axes': [0, 1, 2]
}, {
    'signalType': 'PositionError',
    'signalNum': 2,
    'axes': [0, 1, 2]
}, {
    'signalType': 'VelocityCommand',
    'signalNum': 4,
    'axes': [0, 1, 2]
}, {
    'signalType': 'VelocityError',
    'signalNum': 5,
    'axes': [0, 1, 2]
}, {
    'signalType': 'PSOStatus',
    'signalNum': 43,
    'axes': [0]
}]


class Stage(AbstractStage):
    enabled = [True] * 3
    homed = [True] * 3
    fault = [True] * 3
    position = [30.0, 30.0, 30.0]

    # default speed for state motions
    speed = 0.5

    # This queue is used to syncronize the worker
    # and stage surface process
    command_queue = Queue()

    def deviceName(self):
        return "Fake"

    def __init__(self, paths):
        # Create logger and helpers
        AbstractStage.__init__(self, paths)
        self.paths = paths

        self.collectingData = False
        self.psoArmed = False
        self.windowStart = 60.0  # Set this to never trigger by default

        # This is a worker thread that manages moving the stage
        # variables around in the background
        self.worker_thread = Thread(target=self.worker)
        self.worker_thread.daemon = True
        self.worker_thread.start()

        self._dbPrint = Printer(debugPrint=False)

        self.fake = True
        self.hasDataAcq = True

        self.logger.info("Fake Stage Initialized!")

    def getStageID(self):
        return "FakeID"

    def worker(self):
        while True:
            command = self.command_queue.get()

            # Compute the start position and time
            start_position = np.array(self.position)
            start_time = time.time()

            # Compute the end position after this move is completed
            if command['type'] == 'relative':
                delta_position = np.array(command['delta_position'])
                end_point = start_position + delta_position
            elif 'axis_number' in command:
                axis = command['axis_number']
                delta_position = np.zeros(3)
                delta_position[axis] = command['position'] - start_position[axis]
                end_point = start_position + delta_position
            else:
                end_point = np.array(command['position'])
                delta_position = end_point - start_position

            # Figure out how long it will take to do this move
            distance = linalg.norm(delta_position)
            duration = distance / command['speed']

            # Make sure we do one for the starting position before the loop
            if self.collectingData:
                self.collectDataPoint()

            # Loop until the move is done.
            # Update the position and print debugging
            # at the specified intreval
            update_period = self.sampleInterval / 1000.0
            while time.time() - start_time < duration:
                time.sleep(update_period)

                progress_fraction = (time.time() - start_time) / duration
                position_update = delta_position * progress_fraction
                # add from the beginning to avoid roundoff errors accumulating
                self.position = list(start_position + position_update)

                # Update the PSO status, firing a ZMQ trigger if necessary.
                if self.position[0] <= self.windowStart and not self.psoArmed:
                    self.logger.detail("Triggering!")
                    self.firePSO()
                    self.psoArmed = True
                elif self.position[0] > self.windowStart and self.psoArmed:
                    self.logger.detail("Disarming PSO.")
                    self.psoArmed = False

                if self.collectingData:
                    self.collectDataPoint()

            self.position = list(end_point)

            self.command_queue.task_done()

    # These seem right still
    def lastErrorString(self):
        return "No Errors"

    @delay(500)
    def ackAxisFault(self, axis_number):
        self.fault[axis_number] = False

    @delay(500)
    def axisEnableDisable(self, axisNumber, value):
        self.enabled[axisNumber] = value
        if value:
            self.logger.info('Enabled axis %i.' % axisNumber)
        else:
            self.logger.info('Disabled axis %i.' % axisNumber)

    @delay(500)
    def _home(self, axis_number):
        self.homed[axis_number] = True

    def getCurrentFeedback(self, axisNumber):
        # Simulated stages require no current for motion :p
        return 0

    def isEnabled(self, axis_number):
        return self.enabled[axis_number]

    def isHomed(self, axis_number):
        return self.homed[axis_number]

    def isFault(self, axis_number):
        return self.fault[axis_number]

    def addCommand(self, command):
        self.command_queue.put(command)

    def getAxisPosition(self, axis_number):
        noise = 0.0001
        return self.position[axis_number] + random.uniform(-noise, noise)

    def blockOnMotionDone(self):
        startTime = time.time()

        self._dbPrint('Blocking on motion done. . .')
        self.command_queue.join()

        self._dbPrint("Motion Block Time: %f" % (time.time() - startTime))

    # Movement Commands
    def linear1(self, axis_number, delta_position, speed):
        position_difference = [0] * 3
        position_difference[axis_number] = delta_position

        self.addCommand({
            'type': 'relative',
            'delta_position': position_difference,
            'speed': speed
        })

    def linear3(self, dx, dy, dz, speed):
        self.addCommand({
            'type': 'relative',
            'delta_position': [dx, dy, dz],
            'speed': speed
        })

    def absolute1(self, axis_number, position, speed):
        self.addCommand({
            'type': 'absolute',
            'axis_number': axis_number,
            'position': position,
            'speed': speed
        })

    def absolute3(self, px, py, pz, speed):
        self.addCommand({
            'type': 'absolute',
            'position': [px, py, pz],
            'speed': speed
        })

    def resetPSO(self):
        pass

    def firePSO(self):
        self._sendZMQTrigger()

    def setupWindowEdge(self, sMM):
        self.windowStart = self.position[0] - sMM

    def setQuadDiv(self, quadDiv):
        pass

    def getQuadDiv(self):
        pass

    def configureDataCollection(self, sampleInterval, maxSamples):
        self.sampleInterval = sampleInterval
        self.maxSamples = maxSamples

    def _startDataCollection(self):
        # Make sure we reset the data collection array to blank before starting data collection
        self.data = {signalName: np.zeros(self.maxSamples) for signalName in self.getSignalNames()}
        self.sampleIndex = 0
        self.collectingData = True
        print('Starting data collection.')

    def _stopDataCollection(self):
        self.collectingData = False
        print('Stopped data collection.')

    def collectDataPoint(self):

        def record3DArray(signalName, array):
            """
            Record all three axes of `array` into our data collection object
            by appending to the end of the correct array in the dictionary
            """
            for n, axis in enumerate(['X', 'Y', 'Z']):
                self.data[signalName + '_' + axis][self.sampleIndex] = array[n]

        def getPrevious3DArray(signalName):
            """Retrieve the signals from the last sample"""
            return np.array([self.data[signalName + '_' + axis][self.sampleIndex - 1] for axis in ['X', 'Y', 'Z']])

        # Additive Gaussian noise
        positionNoiseStdDev = 0.00001
        positionNoiseArray = positionNoiseStdDev * np.random.randn(3)

        # The signal name here is arbitrary.  This is to check whether we're at the first sample.
        sampleIndex = len(self.data['PositionCommand_X'])

        if sampleIndex == 0:
            # Since this is a differential measurement, the first value is meaningless.
            # Let's call it zero.
            velocityCommand = np.zeros(3)
            velocityError = np.zeros(3)
        else:
            # v = (p[t] - p[t-1]) / interval
            previousPositionCommand = getPrevious3DArray('PositionCommand')
            previousPositionError = getPrevious3DArray('PositionError')
            velocityCommand = (np.array(self.position) - previousPositionCommand) / self.sampleInterval

            # Same formula as velocity command, but using noisy positions
            noisyPosition = np.array(self.position) + positionNoiseArray
            previousNoisyPosition = previousPositionCommand + previousPositionError

            noisyVelocity = (noisyPosition - previousNoisyPosition) / self.sampleInterval
            velocityError = velocityCommand - noisyVelocity

        # Add to our arrays
        record3DArray('PositionCommand', self.position)
        record3DArray('PositionError', positionNoiseArray)
        record3DArray('VelocityCommand', velocityCommand)
        record3DArray('VelocityError', velocityError)

        # switch PSO firing status every 10 samples; starts in 'firing' state
        def getPsoWord():
            if ((self.sampleIndex // 10) % 2) == 1:
                return 543  # pso off
            else:
                return 31  # pso on; 10th byte goes to 0, 4th byte goes to 1

        self.data['PSOStatus_X'][self.sampleIndex] = getPsoWord()

        self.sampleIndex += 1

    def _retrieveCollectedData(self):
        # These time calculations are all in milliseconds
        numSamples = self.sampleIndex
        if numSamples > self.maxSamples:
            self.logger.warn("Too many samples: %i" % (numSamples,))

        countsPerMM = 200000.0

        signalDict = {
            signalName: [d * countsPerMM for d in self.data[signalName][:self.sampleIndex]]
            for signalName in self.getSignalNames() if signalName != 'PSOStatus_X'
        }
        signalDict.update(PSOStatus_X=list(self.data['PSOStatus_X'][:self.sampleIndex]))

        sampleRate = 1000.0 / self.sampleInterval

        return {
            'data': signalDict,
            'sampleRate': sampleRate
        }

    def getSignalNames(self):
        """
        TAB NOTE: copy-pasted from A3200Stage
        """
        signalNames = []
        axisLabels = {0: 'X', 1: 'Y', 2: 'Z'}

        for signalDict in DATA_SIGNALS:
            for axis in signalDict['axes']:
                axisLabel = axisLabels[axis]
                signalNames.append(signalDict['signalType'] + '_' + axisLabel)

        return signalNames


if __name__ == '__main__':
    def printState(s):
        print("%d %d %d" % (s.getAxisPosition(0), s.getAxisPosition(1), s.getAxisPosition(2)))

    s = Stage()
    s.absolute3(3, 4, 5, 15.0)
    s.linear1(0, 8, 7.0)
    s.linear1(1, -3, 20.0)
    for x in range(10):
        printState(s)
        time.sleep(1)
