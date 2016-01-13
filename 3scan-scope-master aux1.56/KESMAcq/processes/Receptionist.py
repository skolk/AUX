import time
from collections import OrderedDict

# import numpy as np  # Linter complains, but this is used implicitly in this file
import pymongo, zmq

from KESMShared.db import ImageDB
from KESMAcq.shared.PropertyReactor import PropertyReactor
from KESMAcq.shared.ManagedProcess import ManagedProcess


class ImageTask:
    def __init__(self, portToBind, imgDB, timeout=200):
        # Store the ref to the image meta
        self.imageDB = imgDB
        self.timeout = timeout

        # Setup ZMQ
        self.zmqCtx = zmq.Context()
        self.sock = self.zmqCtx.socket(zmq.DEALER)
        self.sock.bind("tcp://*:" + str(portToBind))

        # Setup the image buffers
        self.buffer = {}
        self.queued = OrderedDict()
        self.running = OrderedDict()

    def addToQueue(self, imgID, imgArray):
        self.buffer[imgID] = imgArray
        self.queued[imgID] = time.time()

    def getQueueSize(self):
        return len(self.queued) + len(self.running)

    def sendDownstream(self):
        while self.sock.poll(0, zmq.POLLOUT) and len(self.queued) != 0:
            imgID, cruft = self.queued.popitem(last=False)
            self.sock.send(b"", flags=zmq.SNDMORE)
            self.sock.send_pyobj((imgID, self.buffer[imgID]))
            self.running[imgID] = time.time()

    def requeueLost(self):
        for imgID, timeStarted in self.running.items():
            if (time.time() - timeStarted) > self.timeout:
                print("Requeuing potentially lost image", imgID)
                self.running.pop(imgID)
                self.addToQueue(imgID, self.buffer[imgID])

    def processReplies(self):
        while self.sock.poll(0, zmq.POLLIN):
            savedImageID = self.sock.recv_multipart()[1].decode('ascii')
            self.completionAction(savedImageID)

            # Remove the image from the buffer if it exists
            self.buffer.pop(savedImageID, None)
            self.queued.pop(savedImageID, None)
            self.running.pop(savedImageID, None)

    def updatePass(self):
        self.sendDownstream()
        self.processReplies()
        self.requeueLost()

    def completionAction(self):
        raise NotImplemented()


class TileTask(ImageTask):
    def completionAction(self, imgID):
        self.imageDB.tagImage(imgID, "tiled")


class SaveTask(ImageTask):
    def completionAction(self, imgID):
        self.imageDB.tagImage(imgID, "saved")


class StatTask(ImageTask):
    def completionAction(self, imgID):
        pass


class Receptionist(ManagedProcess):
    def setup(self):
        self.setupZMQ()
        self.setupMongo()
        self.setupTasks()
        self.setupReactor()

    def setupZMQ(self):
        self.zmqCtx = zmq.Context()

        # Incoming Image transfer socket
        self.imageSock = self.zmqCtx.socket(zmq.PULL)
        self.imageSock.bind("tcp://*:" + str(self.paths.globals.zmqPorts.img))

    def setupMongo(self):
        # Setup the mongo collections we need
        self.meteorDatabase = pymongo.Connection(self.paths.mongo.externalURI).meteor

    def setupReactor(self):
        self.reactor = PropertyReactor(self.meteorDatabase.properties_shared)

        # Register the reactions
        self.reactor.registerReactor("imageBufferCount", self.getImageBufferCount, None, 1000)
        self.reactor.registerReactor("imageSize", self.getImageBufferSizeMB, None, 1000)
        self.reactor.registerReactor("waitingImageCount", self.getInProcessCount, None, 1000)

        self.reactor.initializeAll()

    def setupTasks(self):
        imgDB = ImageDB(self.paths.mongo.externalURI)

        saveTask = SaveTask(self.paths.globals.zmqPorts.comp, imgDB)
        tileTask = TileTask(self.paths.globals.zmqPorts.tile, imgDB)
        statTask = StatTask(self.paths.globals.zmqPorts.stat, imgDB)

        self.allTasks = [saveTask, tileTask, statTask]

    def receiveImageFromCamera(self):
        # Unpack the image into 5 python bytes objects
        imgID, imageData = self.imageSock.recv_pyobj()

        # Push the image buffer into all tasks
        [task.addToQueue(imgID, imageData) for task in self.allTasks]

    def getImageBufferCount(self):
        imageBufferCount = sum([task.getQueueSize() for task in self.allTasks])
        return imageBufferCount / len(self.allTasks)

    def getImageBufferSizeMB(self):
        imgIDs = []
        bufferSizeInBytes = 0

        # Go through the tasks and buffers uniquiing on image id (array is not hashable)
        for task in self.allTasks:
            for imgArray in task.buffer.values():
                if id(imgArray) in imgIDs:
                    continue
                bufferSizeInBytes += imgArray.size * imgArray.dtype.itemsize

        # Calculate the size of the image buffer
        imgBufferSizeInMBytes = bufferSizeInBytes / (2 ** 20)
        return imgBufferSizeInMBytes

    def getInProcessCount(self):
        taskQueues = [t.getQueueSize() for t in self.allTasks]
        return sum(taskQueues) / len(self.allTasks)

    def loop(self):
        # Check for incoming images from the scope
        if self.imageSock.poll(0.25, zmq.POLLIN):
            self.receiveImageFromCamera()

        # Give each task its time of day
        for task in self.allTasks:
            task.updatePass()

        # Update queue and user facing stats
        self.reactor.reactAll()
        time.sleep(0.01)
