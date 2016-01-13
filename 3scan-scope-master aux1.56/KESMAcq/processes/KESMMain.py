import math, queue, random, time
from uuid import uuid4
from threading import Thread

import pymongo

from KESMShared.db import ImageDB
from KESMShared.db import StageDB

from KESMAcq.shared.PropertyReactor import PropertyReactor
from KESMAcq.shared.ManagedProcess import ManagedProcess
from KESMAcq.shared.Printer import dbPrint
from KESMAcq.shared import js_time

from KESMAcq.drivers import initHardwareInterfaces, registerCameraReactions, registerStageReactions, registerAuxReactions


class StateChangeFailure(RuntimeError):
    pass


class TimeSurveyor:
    def __init__(self, printer=print):
        self.pfunc = printer
        self._t = time.time()

    def echoDelta(self, stringTag):
        dt = time.time() - self._t
        self.pfunc("%s - %f" % (stringTag, dt))
        self._t = time.time()

    def __call__(self, arg):
        self.echoDelta(arg)


class KESMMain(ManagedProcess):
    """
    The KESM process is in charge of coordinating the various pieces of hardware
    to make slicing and imaging happen. This consists primarily of managing the
    camera and the motion stage. The KESM also instantiates any other device drivers
    that may exist in the config file, such as an aux-box, and hooks them up to the
    database through the PropertyReactor() member variable.

    The KESM receives commands from the database, mediated by the PropertyReactor()
    and another database collection called the action queue, which provides a queue
    of actions that the KESM must perform sequentially.
    """
    def setup(self):
        self.kesmName = self.paths.KESMMain.kesmName

        # Init the hardware interfaces specified by the config
        hardwareInterfaces = initHardwareInterfaces(self.paths)

        # Start up logger
        self.logger.detail("KESM Instantiated")

        # Initialize the KESM hardwares.  Pass in the ZMQ connection addresses
        self.stage = hardwareInterfaces.stage
        self.camera = hardwareInterfaces.camera
        if hasattr(hardwareInterfaces, 'aux'):
            self.aux = hardwareInterfaces.aux

        # Start the reactive property watcher
        c = pymongo.MongoClient(self.paths.mongo.externalURI, w=1)

        self.kesmReactor = PropertyReactor(c.meteor["properties_" + self.kesmName])
        self.actionQueue = c.meteor["actionQueue_" + self.kesmName]
        # The image metadata & stage data collections are shared among all the scopes.

        self.imageDB = ImageDB(self.paths.mongo.externalURI)
        self.stageDB = StageDB(self.paths.mongo.externalURI)

        # Call the reactor registration functions
        registerStageReactions(self.stage, self.kesmReactor)
        registerCameraReactions(self.camera, self.kesmReactor)
        if hasattr(self, 'aux'):
            registerAuxReactions(self.aux, self.kesmReactor)

        self.fakeCamera = hasattr(self.camera, 'fake') and self.camera.fake
        self.fakeStage = hasattr(self.stage, 'fake') and self.stage.fake

        # Determine whether to use hardware or software frame triggering
        if self.fakeCamera or self.fakeStage:
            self.camera.enableFakeTriggering()

        # Wipe pending actions to prevent dangerous things
        self.clearActionQueue()

        # Pull the knifeId from the config and store it in a constant property
        knifeId = self.paths.KESMMain.knifeId
        self.kesmReactor.registerReactor("knifeId", lambda: knifeId, debounceTime=float("inf"))

        # Default to maintenance mode, and build in a reactor to the modes
        self.kesmReactor.registerReactor("scopeMode", self.getMode, self.setMode, 250)
        self.setMode("maintenance")
        self.kesmReactor.registerReactor("slice_queue", self.getSliceQueueSize, debounceTime=250)

        self.loopFunctions = []

        # Init all the properties from the KESM
        self.kesmReactor.initializeAll()
        self.logger.info("KESM Initialization Completed.")

        # Set data collection configuration values
        # dataCollectSampleInterval is the interval in ms between samples collected
        self.dataCollectSampleInterval = 1
        self.dataCollectMaxSamples = 11000

        # This breaks somewhere between 21000 and 24500 samples.
        self.stage.configureDataCollection(self.dataCollectSampleInterval, self.dataCollectMaxSamples)

        self.ts = TimeSurveyor(printer=self.logger.info)
        self.logger.info("Hardware Reaction Loop starting.")

    def getXYZExtents(self):
        # Convenience function to get the xyz min/max from the reactor class
        itemNames = ["slice_X_min", "slice_X_max",
                     "slice_Y_min", "slice_Y_max",
                     "slice_Z_min", "slice_Z_max"]
        return tuple([self.kesmReactor[item] for item in itemNames])

    def setupHardwareForSlicing(self):
        # Retrieve the xyz extents
        xMin, xMax, yMin, yMax, zMin, zMax = self.getXYZExtents()

        # Retrieve the slice speed
        sliceSpeed = self.kesmReactor["slice_speed"]  # mm/s
        # recalculate the velocity in um/s
        sliceSpeedMicronsPerSecond = float(sliceSpeed) * 1000.0

        #######################
        # Camera Computations #
        #######################

        # Put the camera in TDI mode
        self.camera.serialInterface.setCameraMode("tdi")

        # Image length is based on the slice length
        sliceLengthInMM = xMax - xMin
        sliceLengthInUM = sliceLengthInMM * 1000.0

        umPerPixel = self.kesmReactor["camera_pixelSize"] / self.kesmReactor["camera_magnification"]

        # Calculate the required line rate in hz
        lineRate = int(round(sliceSpeedMicronsPerSecond / umPerPixel))

        # Calculate the required line count
        lineCount = math.ceil(sliceLengthInUM / umPerPixel)

        # Update those properties on the camera
        self.kesmReactor.reactiveSet("camera_lineRate", lineRate)
        self.kesmReactor.reactiveSet("camera_ySize", lineCount)

        ######################
        # Stage Computations #
        ######################
        # Compute the quadrature divisor the number of "counts"
        # which pass before sending a line strobe
        # MRG TODO: property and retrieve from stage
        countsPerMM = 200000.0

        # (mm/s) * (cts/mm) == cts/s
        travelSpeedInCounts = sliceSpeed * countsPerMM
        # Units of counts/line
        quadDivisor = round(travelSpeedInCounts / lineRate)

        # self.stage.setQuadDiv(quadDivisor)
        self.kesmReactor.reactiveSet("stage_quadDiv", quadDivisor)
        update = "New image settings. Linerate: {0} Height: {1} QuadDiv: {2}"
        update = update.format(str(lineRate), str(lineCount), str(quadDivisor))
        self.logger.detail(update)

        # Enable external line trigger
        self.camera.serialInterface.setLineTriggerSource("external")
        self.camera.setQuadratureState(True)

        # Setup external frame trigger
        self.camera.setFrameTriggerState(True)

        # Flag to indicate that the window edge on the PSO needs setting
        self.windowTriggerSetup = False

    def isSampleFinished(self):
        xMin, xMax, yMin, yMax, zMin, zMax = self.getXYZExtents()
        return zMin >= zMax

    def computeSliceMotions(self):
        # Pull the xyz extents
        xMin, xMax, yMin, yMax, zMin, zMax = self.getXYZExtents()

        # Compute the slice starting locations
        sampleWidth = yMax - yMin
        sliceWidth = self.kesmReactor["slice_width"]
        self.numSlicesPerFace = int(math.ceil(1.0 * sampleWidth / sliceWidth))
        sliceStartingYs = [yMin + (n * sliceWidth) for n in range(self.numSlicesPerFace)]
        sliceStartingXs = [xMax for n in range(self.numSlicesPerFace)]
        sliceStartingZs = [zMin for n in range(self.numSlicesPerFace)]

        self.sliceStartPoints = list(zip(sliceStartingXs, sliceStartingYs, sliceStartingZs))

        # MRG TODO: Property that changes this value.
        self.sliceStartPoints.reverse()
        self.logger.detail("Starting Slice Offsets:" + str(self.sliceStartPoints), printLocal=False)

        sliceLengthInMM = xMin - xMax  # NB Negative

        # compute the slice dz from x length and store
        dTheta = self.kesmReactor["slice_rakeDelta"] * math.pi / 180.
        dz = sliceLengthInMM * math.tan(dTheta)
        self.sliceTrajectory = (sliceLengthInMM, 0.0, dz)
        self.logger.detail("Computed slice motions: " + str(self.sliceTrajectory), printLocal=False)

    def preSlicingSanityChecks(self):
        if self.isSampleFinished():
            raise StateChangeFailure("Sample is finished.")

        for n, axName in enumerate("xyz"):
            if not (self.stage.isHomed(n) and self.stage.isEnabled(n)):
                errString = "Axis %s is not enabled and homed.  Aborting" % axName
                raise StateChangeFailure(errString)

    def _preStateChange(self, modeName):
        self.logger.info("Switching to %s mode" % modeName)

        # Stop any slicing that is going on
        self._stopSliceThread()

        # Turn the camera off (we can come from focus mode)
        self.camera.setAcqThreadState(False)

        # Reset the PSO state
        self.stage.resetPSO()

    def state_slicing(self):
        # Do sanity checks
        self.preSlicingSanityChecks()

        # Compute and set quad div and triggering interlocks
        self.setupHardwareForSlicing()

        # Flag the slice count to zero (restart a face)
        self.sliceCounter = 0
        self.computeSliceMotions()

        # Reset and zero-out the PSO before turning the camera on.
        self.goToSliceStart(0)
        self.stage.setupWindowEdge(0.1)

        # Turn on the pump
        self.aux.setPump(True)
        self.aux.startFlow()

        # Enable camera
        self.logger.info("Post Acquisition Lock Checks Complete. Enabling Camera")
        self.camera.setAcqThreadState(True)

        self._startSliceThread()
        # Set a fuction running in the main
        # loop to supervise the slice thread
        self.loopFunctions = [self.checkAcqRunning]

    def state_focus(self):
        # Put the camera in TDI mode
        self.camera.serialInterface.setCameraMode("area")

        # Set image buffer width to 96px
        self.kesmReactor.reactiveSet("camera_ySize", 96)

        # Disable quadrature mode
        self.camera.serialInterface.setLineTriggerSource("internal")

        time.sleep(2)

        # Set internal line rate to . . . something. . .
        # THis should be setup to match the TDI exposure . . .
        # Typical is between 1khz to 68khz for TDI mode.
        # Not sure how that translates
        self.camera.setLineRate(5000)

        # Turn on the camera
        self.camera.setAcqThreadState(True)

        self._focusModeTimeout = time.time() + (30 * 60)

        # Register a function to run each pass triggering camera at right intreval
        # Also setup focus mode to timeout after 30 minutes
        self.loopFunctions = [self.maybePullFrameTrigger, self.timeoutFocusMode]

    def state_maintenance(self):
        # Turn off the pump, and put the valves in a known state
        self.aux.stopFlow()
        self.aux.setPump(False)
        self.aux.setCapture(False)
        self.aux.executeCommand("POFF")

        # Remove all the loop functions
        self.loopFunctions = []

    def setMode(self, stateName):
        if hasattr(self, "currentMode") and (stateName == self.currentMode):
            self.logger.info("Ignoring request to change to current state (%s)" % stateName)

        # Grab the function to transition states, then run it
        self.logger.detail("KESM going to mode: " + stateName)
        stateSetupFunction = getattr(self, "state_" + stateName)
        try:
            self._preStateChange(stateName)
            stateSetupFunction()
        except StateChangeFailure as e:
            self.logger.error("Stage change failure: " + str(e))
            self.state_maintenance()
            stateName = "maintenance"

        # tada! state changed here
        self.currentMode = stateName

        # Echo that the state has been changed to the user
        stateChangeMsg = "Switched to state: " + stateName
        self.logger.info(stateChangeMsg)

    def getMode(self):
        return self.currentMode

    def clearActionQueue(self):
        self.actionQueue.remove()

    def processActionQueue(self):
        for actionDoc in self.actionQueue.find().sort('time', pymongo.ASCENDING):
            self.parseAndAct(actionDoc["action"])
            self.actionQueue.remove(actionDoc)

    def parseAndAct(self, actionString):
        # Break up the string into the function name and arguments
        actParse = actionString.split()
        action = actParse[0]
        params = tuple(actParse[1:])

        # Get the associated function, and call it with the params passed
        actionName = "action_" + action
        if hasattr(self, actionName):
            getattr(self, actionName)(*params)
        else:
            self.logger.warn("Kesm has no action named'" + actionName + "'")

    ###################################
    # Reactions to GUI button presses #
    ###################################
    def getSliceQueueSize(self):
        if not hasattr(self, "uuidQueue"):
            return 0
        return self.uuidQueue.qsize()

    def action_stopSlicing(self):
        self._clearUUIDQueue()

    def _clearUUIDQueue(self):
        while not self.uuidQueue.empty():
            try:
                self.uuidQueue.get_nowait()
            except queue.Empty:
                break

    def _addSlicesToQueue(self, nSlices):
        assert nSlices > 0, "Queue slices must be a positive integer"

        if not hasattr(self, "uuidQueue"):
            self.logger.warn("Attempt to change slice queue while not in slicing mode!")
            return

        *_, zMin, zMax = self.getXYZExtents()

        if zMax < zMin:
            self.logger.warn("Slice sample button clicked on completed sample.")
            return

        for x in range(nSlices):
            self.uuidQueue.put(str(uuid4()))

    def action_sliceOne(self):
        self._addSlicesToQueue(1)

    def action_queueSlices(self, nSlices):
        # Get the current slice queue, then update it with the new value
        self._addSlicesToQueue(nSlices)

    def action_sliceFace(self):
        self._addSlicesToQueue(self.numSlicesPerFace)

    def action_sliceSeveralFaces(self, numFacesString):
        numFaces = int(numFacesString)
        assert numFaces > 0
        self._addSlicesToQueue(numFaces * self.numSlicesPerFace)

    def _getNumSlicesLeftOnFace(self):
        return self.numSlicesPerFace - self._getOffsetIndex()

    def action_finishFace(self):
        self._clearUUIDQueue()

        # Compute the number remaining, then increment to finish those
        self._addSlicesToQueue(self._getNumSlicesLeftOnFace())

    def action_sliceSample(self):
        *_, zMin, zMax = self.getXYZExtents()
        sliceThickness = self.kesmReactor['slice_thickness'] / 1000.0

        # Compute the slices for the current face.
        slicesForThisFace = self._getNumSlicesLeftOnFace()

        # Compute the slices for the rest of the faces.
        numFacesLeft = math.ceil((zMax - zMin) / sliceThickness) - 1
        slicesForOtherFaces = self.numSlicesPerFace * numFacesLeft

        # Start over with the slice queue
        self._clearUUIDQueue()

        # Add all the faces to the slice queue.
        self._addSlicesToQueue(slicesForThisFace + slicesForOtherFaces)

    def onFaceFinished(self):
        # See if we are changing the rake angle
        rakeAngleDelta = self.kesmReactor["slice_rakeDelta"]
        rakeTarget = self.kesmReactor["slice_rakeTarget"]

        # Slice thickness in In mm
        sliceThickness = self.kesmReactor["slice_thickness"] / 1000.0

        # Pull the xyz extents
        xMin, xMax, yMin, yMax, zMin, zMax = self.getXYZExtents()

        # Max that the rake angle will be decremented by
        radToDeg = 180.0 / math.pi
        sliceAspect = sliceThickness / (xMax - xMin)
        maxThetaDecrement = math.atan(sliceAspect) * radToDeg

        # If no rake angle adjustment is occuring
        if rakeAngleDelta == rakeTarget:
            # Rachet down the z by the slice thickness (microns to mm)
            self.kesmReactor["slice_Z_min"] = zMin + sliceThickness
            self.logger.info("Face completed: Moving down in Z")

        # If a positive rake change (always clears)
        # set the rake pos, then increment in z also
        elif rakeTarget > rakeAngleDelta:
            self.kesmReactor["slice_rakeDelta"] = self.kesmReactor["slice_rakeTarget"]
            self.logger.info("Face completed: Positive rake angle applied")

            self.kesmReactor["slice_Z_min"] = zMin + sliceThickness
            self.logger.info("Face completed: Moving down in Z")

        # If negative, step downward in rake angle, no z drop.
        elif rakeTarget < rakeAngleDelta:
            decremented = rakeAngleDelta - maxThetaDecrement
            self.kesmReactor["slice_rakeDelta"] = max(decremented, rakeTarget)
            self.logger.info("Face completed: Rake angle decremented")

        # Recompute the slice starts and trajectories
        self.computeSliceMotions()

    ######################################
    # Stuff called by the slicing thread #
    ######################################
    def insertImageMetadata(self, sliceID, imageType, metaDict={}, propertyOverrides={}):
        # serialize propName:propValue to store for this slice, override those passed as such
        properties = self.kesmReactor.getCurrentPropDict()
        properties.update(propertyOverrides)

        # Stick the properties, and time into the data
        metaDict["_id"] = sliceID
        metaDict["kesmName"] = self.kesmName
        metaDict["properties"] = properties.copy()
        metaDict["time"] = js_time()
        metaDict["imageType"] = imageType
        metaDict["drivers"] = self.paths.KESMMain.drivers

        # Blocking call to insert metadata as this is required for downstream processing
        self.imageDB.insertImageMetadata(metaDict)

    def _computeSliceSpeed(self):
        # Add some wiggle to the slice speed. (+- 15%)
        # TODO: Make these two values properties
        randomizeSpeed = False
        randomPercent = 0.15

        sliceSpeedRandomScale = 1.0
        if randomizeSpeed:
            sliceSpeedRandomScale += random.uniform(-randomPercent, randomPercent)

        return self.kesmReactor["slice_speed"] * sliceSpeedRandomScale

    def _getOffsetIndex(self):
        return self.sliceCounter % self.numSlicesPerFace

    def _doFaceAccounting(self):
        if self._getOffsetIndex() == 0:
            self.onFaceFinished()

    def _isZSafe(self, z):
        *_, zMin, zMax = self.getXYZExtents()

        return zMin < z < zMax

    def goToSliceStart(self, offset, xStartOffset=0.1, bumpSize=0.3):
        offsetIndex = self._getOffsetIndex()
        # Get information about the next slice to be taken
        sX, sY, sZ = self.sliceStartPoints[offsetIndex]

        # Move to a bit before the starting location the starting location + 0.3mm in z to clear sample
        self.stage.absolute3(sX + xStartOffset, sY, sZ - bumpSize, self.kesmReactor["slice_speedOther"])
        self.stage.blockOnMotionDone()

    def sliceAction(self, sliceID):
        offsetIndex = self._getOffsetIndex()

        # Get information about the next slice to be taken
        sX, sY, sZ = self.sliceStartPoints[offsetIndex]
        dx, dy, dz = self.sliceTrajectory

        sliceSpeed = self._computeSliceSpeed()
        nonSliceSpeed = self.kesmReactor["slice_speedOther"]

        # TODO: Make this a property
        bumpSize = 0.3
        xStartOffset = 0.1
        # Move to a bit before the starting location the starting location + 0.3mm in z to clear sample
        self.stage.absolute3(sX + xStartOffset, sY, sZ - bumpSize, nonSliceSpeed)

        # put the metadata in before slicing taking the slicing motion
        # Done during the above motion . . .
        self.insertImageMetadata(sliceID, "slice",
                                 metaDict={"offset": offsetIndex},
                                 propertyOverrides={"slice_speed": sliceSpeed})
        self.stage.blockOnMotionDone()

        # Drop down
        self.stage.absolute3(sX + xStartOffset, sY, sZ, nonSliceSpeed)
        self.stage.blockOnMotionDone()

        # Add the UUID to the camera queue
        self.camera.enqueueImageUUID(sliceID)

        # Make the slicing motion happen
        self.logger.info("Starting Slice Motion at ({0}, {1}, {2})".format(sX, sY, sZ))
        self.logger.info("Slice Trajectory ({0}, {1}, {2})"        .format(dx, dy, dz))

        dcDocument = {"imageId": sliceID,
                      "sampleId": self.kesmReactor["currentSampleID"],
                      "kesmName": self.kesmName}

        # Start data collection
        with self.stage.dataCollection(self.stageDB, dcDocument):
            # Make the actual slice
            self.stage.linear3(dx - (xStartOffset * 2), dy, dz, sliceSpeed)
            self.stage.blockOnMotionDone()

        self.logger.info("Finished slice motion.")

        # committing the stage data and tagging the images take almost a half second,
        # So we optimistically move back toward our start point, assuming its closer
        # to the next start than where we currently are, can be clobbered if loop
        # This can get clobbered if the loop is fast enough to the actual start point.
        self.stage.absolute3(sX + xStartOffset, sY, sZ - bumpSize, nonSliceSpeed)

        # Add KESM-specific fields to the data that the stage collects,
        # then insert it into the database.
        self.imageDB.tagImage(sliceID, "sliced")

        self.logger.info("Slice Counter: %i" % self.sliceCounter, printLocal=False)
        self.sliceCounter += 1

        # Call onFaceFinished if necessary.
        self._doFaceAccounting()

    def sliceThread(self):
        self.uuidQueue = queue.Queue()
        while self._sliceThreadRunning:

            # If the sample is done, then abort and go back to maintenance mode.
            if self.isSampleFinished():
                self.logger.warn("Slice would be out of bounds, aborting.")
                self.action_stopSlicing()
                break
            try:
                uuid = self.uuidQueue.get(timeout=0.1)
            except queue.Empty:
                continue

            self.sliceAction(uuid)
        del self.uuidQueue
        # No errors if this set!
        self._expectedExit = True

    def _startSliceThread(self):
        self._sliceThreadRunning = True
        self._expectedExit = False
        self._sliceThreadInst = Thread(target=self.sliceThread)
        self._sliceThreadInst.start()

    def _stopSliceThread(self, timeout=10):
        self._sliceThreadRunning = False
        # Make the safe to call if the slice thread isn't even running
        if not hasattr(self, "_sliceThreadInst"):
            return

        # Join the slice thread, assert that is it dead, and cleanup the object
        self._sliceThreadInst.join(timeout)
        assert not self._sliceThreadInst.isAlive(), "Slice thread failed to terminate after %i seconds." % timeout
        del self._sliceThreadInst

    def checkAcqRunning(self):
        cameraThreadRunning = self.camera.getAcqThreadRunning()
        sliceThreadRunning = self._sliceThreadInst.isAlive()

        if not cameraThreadRunning:
            self.logger.error("Image capture thread unexpectedly terminated.")
            self.setMode("maintenance")

        if not sliceThreadRunning:
            if self._expectedExit:
                self.logger.info("Slice thread exited normally.")
            else:
                self.logger.error("Slice thread unexpectedly terminated.")
            self.setMode("maintenance")

    def maybePullFrameTrigger(self, triggerSpacing=0.5):
        # Init the time if it has not been already
        if not hasattr(self, "_lastTriggerTime"):
            self._lastTriggerTime = time.time()
            return

        # Pass on this round if we can't stick an image in the queue
        if self.camera.imageQueueFull():
            return

        # Pull the trigger if enough time has elapsed
        if (time.time() - self._lastTriggerTime) > triggerSpacing:
            focusImageID = str(uuid4())
            # Insert image metadata with the focus tag
            self.insertImageMetadata(focusImageID, "focus")
            self.camera.enqueueImageUUID(focusImageID)

            # Have the stage mock a trigger event
            self.stage.firePSO()
            self._lastTriggerTime = time.time()

    def timeoutFocusMode(self):
        if time.time() > self._focusModeTimeout:
            self.logger.warn("Focus mode timeout.")
            self.setMode("maintenance")

    def loop(self):
        # React to all property changes then
        self.kesmReactor.reactAll()

        # Finally, perform actions from the queue
        self.processActionQueue()

        # Run all the reqistered loop functions
        [f() for f in self.loopFunctions]


if __name__ == "__main__":
    dbPrint("Use launcher to run KESM.")
