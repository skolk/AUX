import os, time
import numpy as np
from queue import Queue

from KESMAcq.drivers.abstract import AbstractCamera
from KESMAcq.shared import findMyDirectory
from KESMAcq.shared.CFFIDriver import CFFIDriver
from .SerialCamera import getCameraSerialInterface

from .cheaders import defines
myPath = findMyDirectory(__file__)
headerPath = os.path.join(myPath, "cheaders.h")
camConfigFolder = os.path.join(myPath, "configs")


class Camera(CFFIDriver, AbstractCamera):
    def deviceName(self):
        return "Sapera"

    def __init__(self, paths):
        AbstractCamera.__init__(self, paths)
        CFFIDriver.__init__(self, headerPath, "corapi.dll")

        # Init tha camera api
        self.CorManOpen()
        self.sysHandle = self.CorManGetLocalServer(debug=False)

        # Get the server number
        serverNumberPtr = self.ffi.new("UINT32*")
        self.CorManGetServerCount(serverNumberPtr)
        self.serverNumber = serverNumberPtr[0]

        # Init the board handle
        self.boardHandle = self.ffi.new("CORSERVER*")
        self.CorManGetServerByName("Xcelera-CL+_PX8_1".encode("ascii"), self.boardHandle)
        self.frameGrabber = self.boardHandle[0]

        # Init the serial camera interface and use it to detect the camera identity
        camSerialPort = self._getCameraCOMPort()
        self.serialInterface = getCameraSerialInterface(paths, camSerialPort)
        modelName = self.serialInterface.getCameraModel()
        camFullPath = os.path.join(camConfigFolder, modelName + ".cca").replace("\\", "/")
        vicFullPath = os.path.join(camConfigFolder, modelName + ".cvi").replace("\\", "/")

        # Sanity check the file paths:
        camExists = os.path.exists(camFullPath)
        vicExists = os.path.exists(vicFullPath)
        assert camExists and vicExists, "Missing camera config files."

        # Init the cam structure from the cam file
        self._camPtr = self.ffi.new("CORCAM*")
        self.CorCamNew(self.sysHandle, self._camPtr)
        self.CorCamLoad(self._camPtr[0], camFullPath.encode("ascii"))

        # Init the vic structure from the vic file
        self._vicPtr = self.ffi.new("CORVIC*")
        self.CorVicNew(self.sysHandle, self._vicPtr)
        self.CorVicLoad(self._vicPtr[0], vicFullPath.encode("ascii"))

        # Based on the requested output format (mono vs rgb),
        # inspect the potential acq handles, and pick the one that supports our desires.
        outputFormatPtr = self.ffi.new("UINT32*", 0)
        self.CorVicGetPrm(self._vicPtr[0], defines["CORVIC_PRM_OUTPUT_FORMAT"], outputFormatPtr)
        outputFormat = outputFormatPtr[0]

        # Determine how many potential acquisition handles there are.
        # Later, we'll iterate through them until one works for us.
        acqCountPtr = self.ffi.new("UINT32*")
        self.CorAcqGetCount(self.boardHandle[0], acqCountPtr)
        acqCount = acqCountPtr[0]

        self._acqHandlePtr = self.ffi.new("CORACQ*")
        foundValidAcq = False
        for acqNum in range(acqCount):
            self.CorAcqGetHandle(self.boardHandle[0], acqNum, self._acqHandlePtr)
            potentialOutputFormats = self.ffi.new("UINT32[]", [0] * 64)

            self.CorAcqGetCap(self._acqHandlePtr[0], defines["CORACQ_CAP_OUTPUT_FORMAT"], potentialOutputFormats)

            # Check the potential formats against the desired (array membership)
            foundValidAcq = outputFormat in potentialOutputFormats

            # If this acqHandle has the desired format, then don't bother looking at the other ones.
            if foundValidAcq:
                break

            # Release this handle because it's not the one we want.
            self.CorAcqRelease(self._acqHandlePtr[0])

        # Error out! Something is wrong.
        if not foundValidAcq:
            self.logger.raiseError("Did not find acquisition handle with matching format!")

        # Now that we have the correct pointer, store the dereferenced object for convenience
        self.acqHandle = self._acqHandlePtr[0]
        self.logger.info("Found valid acquisition handle matching %i on handle #%i" % (outputFormat, acqNum))

        # Finally commit the cam/vic parameters
        self.CorAcqSetPrms(self.acqHandle, self._vicPtr[0], self._camPtr[0], True)

        # ZMQ communication handles
        self.pollCamera = self._pollFrameGrabber

    def __del__(self):
        self.logger.info("SaperaCamera Destructor Called")
        self._destroyBXC()
        self.CorAcqRelease(self.acqHandle)

        self.logger.detail("Camera destructor completed.")
        # Free the vic/cam handles
        self.CorVicFree(self._vicPtr[0])
        self.CorCamFree(self._camPtr[0])

        self.CorManClose()

    def _getCameraCOMPort(self):
        comCString = self.ffi.new("char[256]")
        acqHandlePtr = self.ffi.new("CORACQ*")
        self.CorAcqGetHandle(self.boardHandle[0], 0, acqHandlePtr)
        self.CorAcqGetSerialPortName(acqHandlePtr[0], 256, comCString)
        self.CorAcqRelease(acqHandlePtr[0])

        return self._unpackCStr(comCString)

    def _errorDecoder(self, errorBits):
        # From the header file
        #     status ID:  8 bits - a CORSTATUS_... constant
        #     info:      12 bits - a CORSTATUS_INFO_... constant
        #     level:      2 bits - a CORSTATUS_LEVEL_... constant
        #     module:     6 bits - a CORSTATUS_MODULE_... constant
        # |------------------|-------------------|-------------|-------------|-----------------|
        # |31   reserved   28|27   module ID   22|21  level  20|19   info   8|7   status ID   0|
        # |------------------|-------------------|-------------|-------------|-----------------|

        errorId = errorBits & 0xff
        errorInfo = (errorBits >> 8) & 0xfff
        errorLevel = ((errorBits >> 20) & 0x03) if errorBits != 0 else defines["CORSTATUS_LEVEL_INF"]
        errorModule = (errorBits >> 22) & 0x3f

        return errorId, errorInfo, errorLevel, errorModule

    def processError(self, errorBits, location):
        errorId, errorInfo, errorLevel, errorModule = self._errorDecoder(errorBits)

        statusCStr = self.ffi.new("char[256]")
        errWhileChecking = self.CorManGetStatusText(errorBits, statusCStr, 256, self.ffi.NULL, 0, debug=False)

        if errWhileChecking:
            self.logger.error("Error while retrieving error.  That's not good.")
            return

        statusString = self._unpackCStr(statusCStr)
        errorString = "Code %i ErrorID %i Info %i Level %i Module %i (%s) - %s()"
        formatted = errorString % (errorBits, errorId, errorInfo, errorLevel, errorModule, statusString, location)

        errorLevels = {
            defines["CORSTATUS_LEVEL_INF"]: self.logger.detail,
            defines["CORSTATUS_LEVEL_WRN"]: self.logger.warn,
            defines["CORSTATUS_LEVEL_ERR"]: self.logger.raiseError,
            defines["CORSTATUS_LEVEL_FAT"]: self.logger.raiseError
        }

        # Don't barf to the console for successful API calls.
        printLocal = errorBits != 0
        errorLevels[errorLevel](formatted, printLocal=printLocal)

    def _getAcqPrm(self, paramName):
        rValue = self.ffi.new("UINT32*", 0)
        self.CorAcqGetPrm(self.acqHandle, defines[paramName], rValue)
        return rValue[0]

    def _setAcqPrm(self, paramName, value):
        self.CorAcqSetPrm(self.acqHandle, defines[paramName], value)

    def _createBuffers(self, bufferCount):
        # Get the params for a new buffer
        xSize = self.getImageWidth()
        ySize = self.getImageHeight()
        fmt = self._getAcqPrm("CORACQ_PRM_OUTPUT_FORMAT")
        bufferType = defines["CORBUFFER_VAL_TYPE_SCATTER_GATHER"]

        # One new buffer for each loop, cleared and ready to go!
        bufs = []
        for n in range(bufferCount + 1):
            cBuf = self.ffi.new("CORBUFFER*")
            self.CorBufferNew(self.sysHandle, xSize, ySize, fmt, bufferType, cBuf)
            self.CorBufferClear(cBuf[0], 0)
            bufs.append(cBuf)

        self.cBuffers = bufs

    def _mfgBufferCallback(self):
        # This function hurts my brain a bit, be careful editing it
        self._bufferToRead = Queue()
        self._lastEvent = 0

        @self.ffi.callback("UINT32(void*, UINT32, UINT32)")
        def bufferCallback(extRef, signalNumber, eventCount):
            # Yeah, we are casting a void * to an int.
            bufferID = int(self.ffi.cast("int", extRef))
            if bufferID == len(self.cBuffers):
                self.logger.error("Callback for population of image into trashbuffer.  Oh noes!")

            # Make sure we are not losing events
            if eventCount != self._lastEvent + 1:
                self.logger.warn("Frame was dropped? (%i -> %i)" % (self._lastEvent, eventCount))
            self._lastEvent = eventCount

            if signalNumber == defines["CORXFER_VAL_EVENT_TYPE_START_OF_FRAME"]:
                self.logger.info("Trigger Received by Camera, Frame Started into buffer %i" % bufferID)
            elif signalNumber == defines["CORXFER_VAL_EVENT_TYPE_END_OF_FRAME"]:
                # Queue the image to be read, and return quickly (back to Sapera C-land)
                self.logger.info("Frame completed callback for buffer %i" % bufferID)
                self._bufferToRead.put(bufferID)
            else:
                self.logger.error("Unknown signal number: 0x%x" % signalNumber)

            return defines["CORSTATUS_OK"]

        # This needs to be assigned as an attr so there is no
        # "self" argument that needs to be cffi coherced (no pybind action)
        return bufferCallback

    def _createXfer(self):
        eventMask = defines["CORXFER_VAL_EVENT_TYPE_START_OF_FRAME"] | defines["CORXFER_VAL_EVENT_TYPE_END_OF_FRAME"]

        # Create the transfer object, and attach the buffers to it
        for n, buf in enumerate(self.cBuffers):
            if n == 0:
                # Create a (X)fer handle to link acquisition to 0th buffer
                cXfer = self.ffi.new("CORXFER*")
                self.CorXferNew(self.frameGrabber, self.acqHandle, buf[0], self.ffi.NULL, cXfer)
            if n > 0:
                # Attach the next n buffers
                self.CorXferAppend(cXfer[0], self.acqHandle, buf[0], self.ffi.NULL)

            # The sapera callback machinery will pass a void pointer, but we instead just pack
            # a integer buffer identifier into the pointer, and deref it on the other size.
            bufferID = self.ffi.cast("void *", n)
            self.CorXferRegisterCallback(cXfer[0], eventMask, self._saperaCallback, bufferID)

        # Change the xfer to use buffer cycling, defaulting to the last (trash) buffer only if all others are full
        self.CorXferSetPrm(cXfer[0], defines["CORXFER_PRM_CYCLE_MODE"], defines["CORXFER_VAL_CYCLE_MODE_SYNCHRONOUS_NEXT_EMPTY_WITH_TRASH"])

        # Set the callback event counter to be based on the source count (xfer) vs dest (buffer)
        # This means that the event count is the same across all buffers (increments per slice)
        self.CorXferSetPrm(cXfer[0], defines["CORXFER_PRM_EVENT_COUNT_SOURCE"], defines["CORXFER_VAL_EVENT_COUNT_SOURCE_SRC"])

        self.cXfer = cXfer

    def _createBXC(self, bufferCount=4):
        # Create the requested number of buffers (plus trash)
        self._createBuffers(bufferCount)

        # Create the buffer-filled callback
        # NB: This is a cffi function object with some additonal closure magic
        self._saperaCallback = self._mfgBufferCallback()

        # Init the xfer object
        self._createXfer()

        # "Connect" the transfer object
        self.CorXferConnect(self.cXfer[0])

    def _destroyBXC(self):
        # Disconnect and release the xfer from all buffers
        x = self.cXfer[0]
        self.CorXferDisconnect(x)
        self.CorXferReset(x)
        self.CorXferFree(x)

        # Kill all the buffers
        for buf in self.cBuffers:
            self.CorBufferFree(buf[0])

        # Nuke the py-refs to them also
        del self.cXfer, self.cBuffers

    def setAcqThreadState(self, requestedState, bufferCount=4):
        if requestedState == self._imgRunning:
            return

        if requestedState:
            self._createBXC(bufferCount=bufferCount)
            self.CorXferStart(self.cXfer[0], defines["CORXFER_CONTINUOUS"])
            self._startImageThread(bufferCount)
        else:
            self._stopImageThread()
            self.CorXferAbort(self.cXfer[0])
            self.CorXferStop(self.cXfer[0])
            self.CorXferWait(self.cXfer[0], 10 * 1000)  # Timeout in at most 10 seconds.
            self._destroyBXC()

    def getImageWidth(self):
        return self._getAcqPrm("CORACQ_PRM_CROP_WIDTH")

    def getImageHeight(self):
        return self._getAcqPrm("CORACQ_PRM_CROP_HEIGHT")

    def getLineRate(self):
        return self._getAcqPrm("CORACQ_PRM_INT_LINE_TRIGGER_FREQ")

    def setImageWidth(self, width):
        self._setAcqPrm("CORACQ_PRM_CROP_WIDTH", width)

    def setImageHeight(self, height):
        self._setAcqPrm("CORACQ_PRM_CROP_HEIGHT", height)

    def setLineRate(self, rate):
        self._setAcqPrm("CORACQ_PRM_INT_LINE_TRIGGER_FREQ", rate)

    def setQuadratureState(self, state):
        if state:
            # Disable the connection to the internal line trigger:
            self._setAcqPrm("CORACQ_PRM_INT_LINE_TRIGGER_ENABLE", False)
            self._setAcqPrm("CORACQ_PRM_EXT_LINE_TRIGGER_ENABLE", False)
            self._setAcqPrm("CORACQ_PRM_LINE_TRIGGER_ENABLE", True)
            self._setAcqPrm("CORACQ_PRM_SHAFT_ENCODER_ENABLE", True)
        else:
            # Disable the triggering via shaft encoder
            self._setAcqPrm("CORACQ_PRM_SHAFT_ENCODER_ENABLE", False)
            self._setAcqPrm("CORACQ_PRM_INT_LINE_TRIGGER_ENABLE", True)
            # self._setAcqPrm("CORACQ_PRM_CAM_IO_CONTROL", 0x00000000) # MRG: not necessary any more?

    def getFrameTriggerState(self):
        return self._getAcqPrm("CORACQ_PRM_EXT_TRIGGER_ENABLE")

    def setFrameTriggerState(self, triggerActive):
        if triggerActive:
            # Enable the external Trigger
            self._setAcqPrm("CORACQ_PRM_EXT_TRIGGER_ENABLE", True)
            self._setAcqPrm("CORACQ_PRM_EXT_TRIGGER_SOURCE", 1)   # 2-From External Trigger #1
            self._setAcqPrm("CORACQ_PRM_EXT_TRIGGER_DETECTION", defines["CORACQ_VAL_FALLING_EDGE"])
            self._setAcqPrm("CORACQ_PRM_EXT_TRIGGER_LEVEL", defines["CORACQ_VAL_LEVEL_422"])
            self._setAcqPrm("CORACQ_PRM_EXT_TRIGGER_DURATION", 100)
        else:
            # Disable the external Trigger
            self._setAcqPrm("CORACQ_PRM_EXT_TRIGGER_ENABLE", False)

        # Echo back the connection name to logging
        inputName = self.ffi.new("char[32]")
        self.CorAcqGetPrm(self.acqHandle, defines["CORACQ_PRM_EXT_TRIGGER_SOURCE_STR"], inputName)
        triggerSourceName = self._unpackCStr(inputName)
        self.logger.info("Camera waiting for trigger on:" + triggerSourceName)

    def getChannelCount(self):
        fmt = self._getAcqPrm("CORACQ_PRM_OUTPUT_FORMAT")

        if fmt == defines["CORDATA_FORMAT_RGB8888"]:
            return 4
        elif fmt == defines["CORDATA_FORMAT_MONO8"]:
            return 1
        else:
            self.logger.warn("Format returned as '" + str(fmt) + "' treating as monochrome 8-bit.")
            return 1

    def measureCameraSignals(self):
        signals = self._getAcqPrm("CORACQ_PRM_SIGNAL_STATUS")

        lineValid = (signals & 0x01) != 0
        frameValid = (signals & 0x02) != 0
        pixClockValid = (signals & 0x04) != 0

        return lineValid, frameValid, pixClockValid

    def _pollFrameGrabber(self, timeout):
        startTime = time.time()
        while time.time() < (startTime + timeout):
            if self._bufferToRead.empty():
                time.sleep(0.01)
            else:
                return True
        return False

    def _getBufferState(self, buf, checkOverflow=True):
        # Buffer "state" comes back in a uint32 package.
        cState = self.ffi.new("UINT32*")
        self.CorBufferGetPrm(buf[0], defines["CORBUFFER_PRM_STATE"], cState)
        intState = int(cState[0])

        if checkOverflow:
            assert (intState & defines["CORBUFFER_VAL_STATE_OVERFLOW"]) == 0, "Buffer is overflown!"

        return ((intState & defines["CORBUFFER_VAL_STATE_FULL"]) != 0)

    def _flagBufferEmpty(self, buf):
        self.CorBufferSetPrm(buf[0], defines["CORBUFFER_PRM_STATE"], defines["CORBUFFER_VAL_STATE_EMPTY"])

    def receiveImage(self):
        # Deref the bufer from the request list
        bufferNumber = self._bufferToRead.get()
        buf = self.cBuffers[bufferNumber]

        # Make sure it has has the "Filled" flag
        assert self._getBufferState(buf), "Frame buffer referenced is empty!"

        # Compute the size of the destination array
        xSize = self.getImageWidth()
        ySize = self.getImageHeight()
        channels = self.getChannelCount()
        assert channels in [1, 4], "Unknown channel count (%i)!" % channels

        # MRG TODO: Support different bit-depth here.
        bitDepthDtype = np.uint8

        # Allocate the array to point the image data into
        returnArray = np.zeros([ySize, xSize, channels], dtype=bitDepthDtype)
        arrayPtr = self.ffi.cast("UINT8*", returnArray.ctypes.data)

        # Copy the data into the supplied buffer
        self.CorBufferRead(buf[0], 0, arrayPtr, returnArray.size)

        # Flag the buffer the buffer, and unlock for future writing
        self._flagBufferEmpty(buf)
        self._bufferToRead.task_done()

        # Demux BGRA -> RGB
        if channels == 4:
            demux = np.empty([ySize, xSize, 3], dtype=bitDepthDtype)
            demux[:, :, 0] = returnArray[:, :, 2]
            demux[:, :, 1] = returnArray[:, :, 1]
            demux[:, :, 2] = returnArray[:, :, 0]
            return demux
        elif channels == 1:
            return returnArray
