import os, sys

from HeaderExtractor import HeaderExtractor

# These describe the location of the AT header files, and the output destination
aerotechIncludePath = r'C:\Program Files (x86)\Aerotech\A3200\CLibrary\Include'

aerotechSimplifiedHeaders = open(os.path.join(sys.argv[1], "cheaders.h"), "w")
aerotechSimplifiedPython = open(os.path.join(sys.argv[1], "cheaders.py"), "w")

print("Generating headers based on:", aerotechIncludePath)
print("Outputting them to:", sys.argv[1])

replacements = {"DLLENTRYDECLARATION ": ""}
he = HeaderExtractor(aerotechSimplifiedHeaders, aerotechSimplifiedPython, replacements)

atp = lambda include_name: os.path.join(aerotechIncludePath, include_name)

he.loadIncludeFile(atp("A3200CommonTypes.h"))
he.manualInsert("typedef double DOUBLE;")
he.extractBasicTD("A3200Handle")
he.extractBasicTD("A3200DataCollectConfigHandle")
he.extractAndSimplifyEnum("TASKID")
he.extractAndSimplifyEnum("TASKMASK")
he.extractAndSimplifyEnum("AXISMASK")
he.extractAndSimplifyEnum("AXISINDEX")

he.loadIncludeFile(atp("A3200CommonStructures.h"))
he.extractAndSimplifyEnum("PSOMODE")
he.extractAndSimplifyEnum("DATACOLLECTIONFLAGS")
he.extractAndSimplifyEnum("WAITOPTION")
he.extractAndSimplifyEnum("AXISSTATUS")
he.extractAndSimplifyEnum("DRIVESTATUS")

he.loadIncludeFile(atp("A3200Connection.h"))
he.extractFunction("A3200Connect")
he.extractFunction("A3200Disconnect")

he.loadIncludeFile(atp("A3200Configuration.h"))
he.extractBasicTD("A3200ConfigurationHandle")
he.extractFunction("A3200ConfigurationOpen")
he.extractFunction("A3200ConfigurationParameterFileGet")

he.loadIncludeFile(atp("A3200AeroBasicCommands.h"))
motionFuncs = ("A3200MotionDisable",
               "A3200MotionEnable",
               "A3200MotionFaultAck",
               "A3200MotionHome",
               "A3200MotionLinearVelocity",
               "A3200MotionMoveAbs",
               "A3200MotionSetupRampRateAxis",
               "A3200MotionSetupRampRateCoordinated",
               "A3200MotionSetupScurve",
               "A3200PSOControl",
               "A3200PSOOutputControl",
               "A3200PSOOutputPulse",
               "A3200PSOOutputToggle",
               "A3200PSOOutputWindow",
               "A3200PSOPulseCyclesOnly",
               "A3200PSOTrackInput",
               "A3200PSOWindowInput",
               "A3200PSOWindowOn",
               "A3200PSOWindowRange",
               "A3200TuningSetGain")
for functionName in motionFuncs:
    he.extractFunction(functionName)

he.loadIncludeFile(atp("A3200DataCollectionInfo.h"))
he.extractAndSimplifyEnum("DATASIGNAL")

he.loadIncludeFile(atp("A3200DataCollection.h"))
he.extractStruct("A3200_DATACOLLECTION_STATUS")
functionList = ("A3200DataCollectionConfigAddSignal",
                "A3200DataCollectionConfigApply",
                "A3200DataCollectionConfigCreate",
                "A3200DataCollectionConfigFree",
                "A3200DataCollectionConfigGetSignalCount",
                "A3200DataCollectionConfigSetPeriod",
                "A3200DataCollectionConfigSetSamples",
                "A3200DataCollectionDataRetrieve",
                "A3200DataCollectionGetStatus",
                "A3200DataCollectionStart",
                "A3200DataCollectionStop")
for functionName in functionList:
    he.extractFunction(functionName)

he.loadIncludeFile(atp("A3200ParameterID.h"))
he.extractAndSimplifyEnum("PARAMETERID")

he.loadIncludeFile(atp("A3200Parameter.h"))
he.extractFunction("A3200ParameterGetValue")
he.extractFunction("A3200ParameterGetValueString")
he.extractFunction("A3200ParameterSetValue")
he.extractFunction("A3200ParameterSetValueString")

he.loadIncludeFile(atp("A3200StatusItemInfo.h"))
he.extractAndSimplifyEnum("STATUSITEM")

he.loadIncludeFile(atp("A3200Status.h"))
he.extractFunction("A3200StatusGetItem")

he.loadIncludeFile(atp("A3200ErrorCode.h"))
he.extractAndSimplifyEnum("ErrorCode")
he.extractStruct("ErrorData")

he.loadIncludeFile(atp("A3200Error.h"))
he.extractFunction("A3200GetLastError")
he.extractFunction("A3200GetLastErrorString")

he.loadIncludeFile(atp("A3200Information.h"))
he.extractStruct("Version")
he.extractFunction("A3200InformationGetLibraryVersion")

he.loadIncludeFile(atp("A3200Program.h"))
he.extractFunction("A3200ProgramGetTaskStateString")
he.extractFunction("A3200ProgramStop")

he.loadIncludeFile(atp("A3200Commands.h"))
he.extractFunction("A3200CommandExecute")
he.extractFunction("A3200MotionWaitForMotionDone")
