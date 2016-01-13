import queue, time
from threading import Thread

import zmq

from KESMAcq.shared import js_time
from KESMAcq.shared.ZMQLogger import ZMQLogger


class AbstractDevice:
    """A generic device that the KESM incoroprates."""
    def __init__(self, paths):
        self.paths = paths

        devType = self.deviceType()
        devName = self.deviceName()

        self.logger = ZMQLogger.createFromPaths(paths, devName + devType)
        self.logger.info("Setting up %s %s." % (devName, devType))


class AbstractStage(AbstractDevice):
    """
    Interfaces and calls specific to stages that we wrap.  This is used by
     - Ensemble Stage - A USB based stage system from Aerotech.
     - A3200 Stage - A Firewire based stage system from Aerotech.
     - Fake Stage - A software simulated stage used for testing.
    """
    def deviceType(self):
        return "Stage"

    def __init__(self, paths):
        AbstractDevice.__init__(self, paths)
        self._setupTriggerSock(self.paths.KESMMain.zmqTriggerPort)

        dcMethods = {"__init__": self._initDC,
                     "__enter__": self._startDC,
                     "__exit__": self._endDC}
        self.dataCollection = type("DC", (), dcMethods)

        # No datacollection unless explicitly flagged by driver
        self.hasDataAcq = False

    def _initDC(self, dcModel, dcDoc):
        if not self.hasDataAcq:
            return
        self._dcModel = dcModel
        self._dcDoc = dcDoc

    def _startDC(self):
        if not self.hasDataAcq:
            return
        self._startDataCollection()
        self._dcDoc["startTime"] = js_time()

    def _endDC(self, *cruft):
        if not self.hasDataAcq:
            return
        self._stopDataCollection()
        self._dcDoc['endTime'] = js_time()
        self._dcDoc.update(self._retrieveCollectedData())
        self._dcModel.insertStageData(self._dcDoc)
        del self._dcDoc

    def _setupTriggerSock(self, port):
        ctx = zmq.Context()
        self.triggerSock = zmq.Socket(ctx, zmq.PUB)
        self.triggerSock.bind("tcp://*:" + port)

    # PSO and Quadrature Setup/Test/Debug
    def _sendZMQTrigger(self):
        self.triggerSock.send(b"")

    def home(self, axisNumber):
        """
        This call takes in a axis number and calls the hardware-specific
        homing routine to home the axis.  It first performs sanity checks to
        ensure that the stage is in a state capable of being homed.
        """
        if not self.isEnabled(axisNumber):
            self.logger.error("Attempted to home non-enabled stage. Doing Nothing!")
            return
        if self.isFault(axisNumber):
            self.logger.error("Tried to home faulted stage.  Doing nothing!")
            return

        self._home(axisNumber)

    def currentXYZ(self):
        return tuple([self.getAxisPosition(i) for i in range(3)])


class AbstractCamera(AbstractDevice):
    """
    This class is an abstract wrapper to camera objects.  Subclasses that
    use this interfaces are:
     - SaperaCamera - Cameras that are available through the Sapera imaging library
     - FakeCamera - A class used for simulation and testing of sotware.
    """
    def deviceType(self):
        return "Camera"

    def __init__(self, paths):
        AbstractDevice.__init__(self, paths)

        self._setupTriggerSock(self.paths.KESMMain.zmqTriggerPort)
        self._setupImageSock(paths.globals.zmqEndpoints.img)
        self._imageCallbacks = []

        # Semaphore for image acquisition loop, and queue of image ID's
        self._imgRunning = False

    def enableFakeTriggering(self):
        self.pollCamera = self._zmqImageTriggerPoll

    def registerImageCallback(self, funk):
        self._imageCallbacks.append(funk)

    def _setupImageSock(self, imgURI):
        # Handles for the imaging
        ctx = zmq.Context()
        self.imgSock = ctx.socket(zmq.PUSH)
        self.imgSock.connect(imgURI)

    def _setupTriggerSock(self, triggerPort):
        ctx = zmq.Context()
        self.triggerSock = zmq.Socket(ctx, zmq.SUB)
        self.triggerSock.connect("tcp://127.0.0.1:" + triggerPort)
        self.triggerSock.setsockopt(zmq.SUBSCRIBE, b"")

    def enqueueImageUUID(self, uuid):
        assert self._imgRunning, "UUID added while imaging thread dead!"
        self.uuidQueue.put(uuid)

    def imageQueueFull(self):
        return hasattr(self, 'uuidQueue') and self.uuidQueue.full()

    def _processCallbacks(self, img, uuid):
        for funk in self._imageCallbacks:
            funk(img, uuid)

    def _zmqImageTriggerPoll(self, timeout):
        # zmq poll takes milliseconds, but KESM calls it with seconds
        if self.triggerSock.poll(timeout=timeout * 1000) == 0:
            return False
        # We sucessfully polled above, so this call is non-blocking
        self.triggerSock.recv()
        return True

    def blockOnQueueProcessed(self):
        self.uuidQueue.join()

    def getAcqThreadRunning(self):
        return self._imgRunning

    def requiresNoAcqRunning(self, settingName):
        if self.getAcqThreadRunning():
            raise RuntimeError("Tried to change " + settingName + " while acq was running!")

    def _startImageThread(self, maxQueue=1):
        # Setup the image queue
        self.uuidQueue = queue.Queue(maxsize=maxQueue)

        # Start the thread itself
        self._imgRunning = True
        self.imageThread = Thread(target=self.imagingThread)
        self.imageThread.start()

    def _waitOnQueueEmpty(self):
        # Wait for the queue to empty out
        lastComplaintTime = time.time()
        while not self.uuidQueue.empty():
            if time.time() > lastComplaintTime + 5:
                self.logger.warn("Stop image thread called with images in queue. Waiting...")
                lastComplaintTime = time.time()
            time.sleep(0.01)

    def _stopImageThread(self):
        self._waitOnQueueEmpty()
        self._imgRunning = False

        # signal the acq thread to die, and cleanup after it
        self.imageThread.join(30)
        if self.imageThread.isAlive():
            raise RuntimeError("Image thread failed to stop!")

        del self.uuidQueue

    def imagingThread(self, maxTimeout=30):
        while self._imgRunning:
            # Get the next UUID to be serialized
            try:
                uuidStr = self.uuidQueue.get(True, 0.1)
            except queue.Empty:
                continue

            # Block until image is ready and receive the image
            if not self.pollCamera(maxTimeout):
                self._imgRunning = False
                raise RuntimeError("Waited more than %i seconds for imaging!" % maxTimeout)

            # Pull the image into local ram
            imgArray = self.receiveImage()
            self._processCallbacks(imgArray, uuidStr)

            # Send the image
            self.imgSock.send_pyobj((uuidStr, imgArray))

            self.uuidQueue.task_done()
