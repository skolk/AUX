import os

import numpy as np

from KESMAcq.drivers.abstract import AbstractStage
from KESMAcq.shared import findMyDirectory, js_time
from KESMAcq.shared.CFFIDriver import CFFIDriver

from .cheaders import (AXISINDEX, AXISMASK, AXISSTATUS,
                       PARAMETERID,
                       PSOMODE, STATUSITEM, TASKID, WAITOPTION)

headerPath = os.path.join(findMyDirectory(__file__), "cheaders.h")


class Stage(CFFIDriver, AbstractStage):
    def deviceName(self):
        return "Ensemble"

    def __init__(self, paths):
        # Setups fake triggering + logging
        AbstractStage.__init__(self, paths)
        CFFIDriver.__init__(self, headerPath, "EnsembleC64.dll")

        # Declare a stage handle, and use it to connect
        _stageCount = self.ffi.new("DWORD*")
        _stgPtrs = self.ffi.new("EnsembleHandle**")
        self.EnsembleConnect(self._stgPtrs, _stageCount, debug=False)
        if _stageCount[0] != 1:
            self.processError(self._connected, "EnsembleConnect()")
            self.logger.raiseError("Cannot connect to the stage!  Please check that is it powered on and connected.")

        # Deref and keep handles
        self._stgPtr = _stgPtrs[0]
        self.handle = self._stgPtr[0]

        # Call clear tasks to clean out any leftover detritus and broken programs
        self.clearTasks()

        # Define our selves some semantic sugars
        self._xyzMask = AXISMASK["AXISMASK_00"] | AXISMASK["AXISMASK_01"] | AXISMASK["AXISMASK_02"]
        self._ctsPerMM = self._getDblParameter("PARAMETERID_CountsPerUnit")

        self.setupMotionDefaults()
        self.resetPSO()

    def setupMotionDefaults(self):
        # Set some default motion params that are nice
        self.EnsembleMotionSetupScurve(self.handle, 100)
        rr = self.ffi.new("DOUBLE[3]")

        rampRate = 100
        rr[0] = rampRate
        rr[1] = rampRate
        rr[2] = rampRate

        self.EnsembleMotionSetupRampRateAccelAxis(self.handle, self._xyzMask, rr)
        self.EnsembleMotionSetupRampRateDecelAxis(self.handle, self._xyzMask, rr)

        self.EnsembleMotionSetupRampRateAccelCoordinated(self.handle, rampRate)
        self.EnsembleMotionSetupRampRateDecelCoordinated(self.handle, rampRate)

    def resetPSO(self):
        # Reset the PSO on the x-axis to a default state
        self.EnsemblePSOControl(self.handle, self._axisNumberToIndex(0), PSOMODE["PSOMODE_Reset"])

    def processError(self, success, location):
        if success:
            return

        errString = self.ffi.new("char[4096]")
        self.EnsembleGetLastErrorString(errString, 4096, debug=False)
        self.logger.raiseError(self._unpackCStr(errString) + " - " + location + "()")

    def _axisNumberToMask(self, number):
        if number == 0:
            return AXISMASK["AXISMASK_0"]
        if number == 1:
            return AXISMASK["AXISMASK_1"]
        if number == 2:
            return AXISMASK["AXISMASK_2"]
        raise RuntimeError("Axes above 3 not implemented.")

    def _axisNumberToIndex(self, number):
        if number == 0:
            return AXISINDEX["AXISINDEX_0"]
        if number == 1:
            return AXISINDEX["AXISINDEX_1"]
        if number == 2:
            return AXISINDEX["AXISINDEX_2"]
        raise RuntimeError("Axes above 3 not implemented.")

    def _getDblParameter(self, paramName, axisNumber=0):
        pid = PARAMETERID[paramName]
        ai = self._axisNumberToIndex(axisNumber)
        prmDbl = self.ffi.new("DOUBLE[1]")
        self.EnsembleParameterGetValue(self.handle, pid, ai, prmDbl)
        return prmDbl[0]

    def _setDblParameter(self, paramName, axisNumber, newValue):
        pid = PARAMETERID[paramName]
        ai = self._axisNumberToIndex(axisNumber)
        self.EnsembleParameterSetValue(self.handle, pid, ai, newValue)

    def _getStrParameter(self, paramID, axisNumber=0):
        prmString = self.ffi.new("char[4096]")
        self.EnsembleParameterGetValueString(self.handle, paramID, axisNumber, 4096, prmString)
        return self._unpackCStr(prmString)

    def _getStatusItem(self, axisNumber, enumName, otherValue=0):
        enumValue = STATUSITEM[enumName]
        rValue = self.ffi.new("DOUBLE[1]")
        ai = self._axisNumberToIndex(axisNumber)
        self.EnsembleStatusGetItem(self.handle, ai, enumValue, otherValue, rValue)
        return rValue[0]

    def _getAxisStatus(self, axisNumber, enumName):
        statusInt = self._getStatusItem(axisNumber, "STATUSITEM_AxisStatus")
        return bool(int(statusInt) & AXISSTATUS[enumName])

    def axisEnableDisable(self, axisNumber, enabled):
        am = self._axisNumberToMask(axisNumber)

        if enabled:
            self.EnsembleMotionEnable(self.handle, am)
        else:
            self.EnsembleMotionDisable(self.handle, am)

    def _home(self, axisNumber):
        am = self._axisNumberToMask(axisNumber)
        self.EnsembleMotionHome(self.handle, am)

    # Get and set PID values
    def getPID(self, axisNumber):
        paramNames = ["PARAMETERID_GainKp", "PARAMETERID_GainKi", "PARAMETERID_GainKpos", "PARAMETERID_GainAff"]
        paramIDs = [PARAMETERID[name] for name in paramNames]
        gains = [self._getDblParameter(axisNumber, i) for i in paramIDs]
        return tuple(gains)

    def setPID(self, axis, GainKp, GainKi, GainKpos, GainAff):
        ai = self._axisNumberToIndex(axis)
        self.EnsembleTuningSetGain(self.handle, ai, GainKp, GainKi, GainKpos, GainAff)

    def isEnabled(self, axisNumber):
        return self._getDriveStatus(axisNumber, "DRIVESTATUS_Enabled")    	# MRG NOTE: Needs to be changed.

    def isHomed(self, axisNumber):
        return self._getAxisStatus(axisNumber, "AXISSTATUS_Homed")

    def isInPosition(self, axisNumber):
        return self._getDriveStatus(axisNumber, "DRIVESTATUS_InPosition")

    def isMoving(self, axisNumber):
        return self._getDriveStatus(axisNumber, "DRIVESTATUSBITS_MoveActiveBit")

    def isFault(self, axisNumber):
        faultInt = self._getStatusItem(axisNumber, "STATUSITEM_AxisFault")
        return faultInt > 0

    def getAxisPosition(self, axisNumber):
        return self._getStatusItem(axisNumber, "STATUSITEM_ProgramPositionFeedback")

    def getCurrentFeedback(self, axisNumber):
        return self._getStatusItem(axisNumber, "STATUSITEM_CurrentFeedback")

    def clearTasks(self):
        # Sometimes it caught in a weird running task-state.  This clears that out
        for tid in TASKID.values():
            self.EnsembleProgramStop(self.handle, tid)

    # Run an aerobasic command . . .
    def runCommand(self, commandString):
        cCmdStr = self.ffi.new("char[]", commandString.encode("ascii"))
        returnValue = self.ffi.new("DOUBLE[1]")
        rStr = self.ffi.new("char[4096]")
        print(self.EnsembleProgramGetTaskStateString(self.handle, rStr, 4096))
        print(self._unpackCStr(rStr))
        self.EnsembleCommandExecute(self.handle, cCmdStr, returnValue)
        return returnValue[0]

    def ackAxisFault(self, axisNumber):
        am = self._axisNumberToMask(axisNumber)
        self.EnsembleMotionFaultAck(self.handle, am)

    # Movement Commands
    def linear1(self, axisNumber, delta_position, speed):
        dP = self.ffi.new("DOUBLE*", delta_position)
        am = self._axisNumberToMask(axisNumber)
        self.EnsembleMotionLinear(self.handle, am, dP, speed)

    def linear3(self, dx, dy, dz, speed):
        dxyz = self.ffi.new("DOUBLE[3]", (dx, dy, dz))
        self.EnsembleMotionLinear(self.handle, self._xyzMask, dxyz, speed)

    def absolute1(self, axisNumber, position, speed):
        axisIndex = self._axisNumberToIndex(axisNumber)
        self.EnsembleMotionMoveAbs(self.handle, axisIndex, position, speed)

    def absolute3(self, px, py, pz, speed):
        for n, p in enumerate([px, py, pz]):
            self.absolute1(n, p, speed)

    def blockOnMotionDone(self):
        timedOut = self.ffi.new("BOOL*")
        inPos = WAITOPTION["WAITOPTION_InPosition"]
        maxTimeout = (2 ** 32) - 1
        self.EnsembleMotionWaitForMotionDone(self.handle, self._xyzMask, inPos, maxTimeout, timedOut)

        if timedOut[0]:
            self.logger.raiseError("Motion command timed out - blockOnMotionDone()")

    # Get and set the quadrature divider (MRG NOTE: Slice axis assumed to be x)
    def getQuadDiv(self):
        return self._getDblParameter("PARAMETERID_EncoderDivider", 0)

    def setQuadDiv(self, div):
        return self._setDblParameter("PARAMETERID_EncoderDivider", 0, div)

    def firePSO(self, nPulses=1):
        self._sendZMQTrigger()
        second_in_microseconds = 1e6
        PSOENCODER_MXH = 2
        ai = self._axisNumberToIndex(0)

        # MRG NOTE: There should probably be a PSOMODE_reset here
        self.EnsemblePSOOutputControl(self.handle, ai, 0, 1)
        self.EnsemblePSOTrackInput(self.handle, ai, PSOENCODER_MXH)
        self.EnsemblePSOPulseCyclesOnly(self.handle, ai, second_in_microseconds / 50, second_in_microseconds / 50, nPulses)
        self.EnsemblePSOOutputPulse(self.handle, ai, PSOENCODER_MXH)
        self.EnsemblePSOControl(self.handle, ai, PSOMODE["PSOMODE_Fire"])

    def _decodePSOStatusBits(self, intBits):
        statuses = ["Indicates the FIFO used for ARRAY mode distance firing (PSODISTANCE <axis> ARRAY command) is empty.",
                    "Indicates the FIFO used for BITMAP or BITMASK output mode (PSOOUTPUT <axis> BIT MAP or PSOOUTPUT <axis> BIT MASK commands) is empty.",
                    "Indicates the FIFO used for WINDOW ARRAY mode (PSOWINDOW <axis> 1 ARRAY command) or data acquisition (DATAACQ <axis> 1 ARRAY command) is empty.",
                    "Indicates the FIFO used for WINDOW ARRAY mode (PSOWINDOW <axis> 2 RANGE ARRAY command) or data acquisition (DATAACQ <axis> 2 ARRAY command) is empty.",
                    "Indicates the primary pulse generator is currently generating an output pulse stream.",
                    "NS? Auxiliary Pulse generators is currently generating output pulse stream.",
                    "Indicates the position counter for Window 1 is within the limits specified by the WINDOW RANGE command.",
                    "Indicates the position counter for Window 2 is within the limits specified by the WINDOW RANGE command.",
                    "NS ? Shows the PSO interlock status whis is used to lock the genration of PSO pulses.",
                    "Indicates the state of the primary PSO hardware output (active low).",
                    "NS ? Indicates the state of the auxiliary PSO hardware output (active low).",
                    "Shows the state of the external syncronization input that is used with the PSOOUTPUT PULSE EXTSYNC command"]

        statusString = ""
        print(bin(intBits))
        for bitNumber, stat in enumerate(statuses):
            if (intBits >> bitNumber) & 1:
                statusString += "(BN %i) %s\n" % (bitNumber, stat)
        return statusString

    def getPSOStatusString(self, axis=0):
        self.startCriticalSection()
        result = self.runCommand("DRIVEINFO(X, DRIVEINFO_PSOStatus)")
        stringResult = self._decodePSOStatusBits(int(result))
        self.endCriticalSection()
        return stringResult

    def _userUnitsToCounts(self, userUnits):
        p = self._getDblParameter("PARAMETERID_ReverseMotionDirection")
        sign = 1 if p else -1
        return sign * (self._ctsPerMM * userUnits)

    def setupWindowEdge(self, sMM):
        # Aerobasic Code Inline (ABC)
        PSOENCODER_MXH = 2
        ai = self._axisNumberToIndex(0)

        # ABC: PSOOUTPUT X CONTROL 1
        self.EnsemblePSOOutputControl(self.handle, ai, 0, 1)

        # Tell it which encoder to use
        # ABC: PSOTRACK X INPUT 3
        # MRG Uncertain here, used to have 3 entries of PSOENCODER_MXH
        self.EnsemblePSOTrackInput(self.handle, ai, PSOENCODER_MXH)

        # Turn on window 1, and associate it with the primary encoder
        # ABC: PSOWINDOW X 1 ON
        self.EnsemblePSOWindowOn(self.handle, ai, 1)

        # ABC: PSOWINDOW X 1 INPUT 3
        self.EnsemblePSOWindowInput(self.handle, ai, 1, PSOENCODER_MXH)

        # Make sure the window exit signal is outside the operating range
        # by adding 600mm past (10x total length of travel, but well below int overflows)
        shiftedStart = self._userUnitsToCounts(sMM)
        shiftedEnd = self._userUnitsToCounts(sMM + 600)

        # Set the window starts and stops . . .
        self.EnsemblePSOWindowRange(self.handle, ai, 1, shiftedEnd, shiftedStart)
        self.EnsemblePSOOutputWindow(self.handle, ai, 1)
        self.EnsemblePSOControl(self.handle, ai, PSOMODE["PSOMODE_Arm"])

    def _getChannelCount(self):
        cChannelCount = self.ffi.new("WORD[1]")
        self.EnsembleDataCollectionConfigGetSignalCount(self._dccHandle, cChannelCount)
        return cChannelCount[0]

    def startDataCollection(self):
        self.dataStartTime = js_time()
        self.EnsembleDataCollectionStart(self.handle, self._dccHandle)

    def stopDataCollection(self):
        self.EnsembleDataCollectionStop(self.handle)
        self.dataEndTime = js_time()

    def retrieveCollectedData(self):
        # Compute the number of samples were collected
        dcStatus = self.ffi.new("Ensemble_DATACOLLECTION_STATUS*")
        self.EnsembleDataCollectionGetStatus(self.handle, dcStatus)

        # Figure out how much space we need, allocate it in numpy
        sCount = dcStatus.samplePointCollected
        cCount = self._getChannelCount()
        stageData = np.zeros([cCount, sCount], dtype=np.double)

        # Get a pointer to the array, and use it to have api populate np array
        ptr = self.ffi.cast("double *", stageData.ctypes.data)
        self.EnsembleDataCollectionDataRetrieve(self.handle, cCount, sCount, ptr)

        signalDict = {signalName: stageData[signalIndex, :].tolist() for signalIndex, signalName in enumerate(self.getSignalNames())}
        sampleRate = 1000.0 / self._sampleInterval

        return {
            'data': signalDict,
            'startTime': self.dataStartTime,
            'endTime': self.dataEndTime,
            'sampleRate': sampleRate
        }

    def getStageID(self):
        maxFPLength = 4096
        fp = self.ffi.new("char[]", maxFPLength)

        # Get the config handle and Then the param filename/path
        cfgPtr = self.ffi.new("EnsembleConfigurationHandle*")
        self.EnsembleConfigurationOpen(cfgPtr)
        self.EnsembleConfigurationParameterFileGet(cfgPtr[0], fp, maxFPLength)

        # Unpack the config name, and pull the serial out of it. Looks like:
        # C:\Users\Public\Documents\Aerotech\Ensemble\User Files\171544-A-2-1.prma
        pathToPAramFile = self._unpackCStr(fp)
        _, fileName = os.path.split(pathToPAramFile)
        return fileName[0:12]

    def __del__(self):
        # Free data collection and stage handles
        self.logger.info("EnsembleStage Destuctor Called")
        self.EnsembleDisconnect(self.handle, debug=False)
        self.logger.detail("Deletion of handles successful.")

if __name__ == "__main__":
    stg = Stage()
    print(stg.getStageID())
