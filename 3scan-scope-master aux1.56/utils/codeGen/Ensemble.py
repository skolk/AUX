import os, sys

from HeaderExtractor import HeaderExtractor

# These describe the location of the AT header files, and the output destination
aerotechIncludePath = r'C:\Program Files (x86)\Aerotech\Ensemble\CLibrary\Include'

aerotechSimplifiedHeaders = open(os.path.join(sys.argv[1], "cheaders.h"), "w")
aerotechSimplifiedPython = open(os.path.join(sys.argv[1], "cheaders.py"), "w")

print("Generating headers based on:", aerotechIncludePath)
print("Outputting them to:", sys.argv[1])

replacements = {"DLLENTRYDECLARATION ": ""}
he = HeaderExtractor(aerotechSimplifiedHeaders, aerotechSimplifiedPython, replacements)

atp = lambda include_name: os.path.join(aerotechIncludePath, include_name)

he.loadIncludeFile(atp("CommonTypes.h"))
he.manualInsert("typedef double DOUBLE;")
he.extractBasicTD("EnsembleHandle")
# he.extractBasicTD("EnsembleDataCollectConfigHandle")
he.extractAndSimplifyEnum("TASKID")

# he.extractAndSimplifyEnum("TASKMASK")
he.extractAndSimplifyEnum("AXISMASK")
he.extractAndSimplifyEnum("AXISINDEX")

he.loadIncludeFile(atp("CommonStructs.h"))
he.extractAndSimplifyEnum("PSOMODE")
# he.extractAndSimplifyEnum("DATACOLLECTIONFLAGS")
he.extractAndSimplifyEnum("WAITOPTION")
he.extractAndSimplifyEnum("AXISSTATUS")
# he.extractAndSimplifyEnum("DRIVESTATUS")
he.extractAndSimplifyEnum("TASKSTATE")  # New

he.loadIncludeFile(atp("Connection.h"))
he.extractFunction("EnsembleConnect")
he.extractFunction("EnsembleDisconnect")

# he.loadIncludeFile(atp("EnsembleConfiguration.h"))
# he.extractBasicTD("EnsembleConfigurationHandle")
# he.extractFunction("EnsembleConfigurationOpen")
# he.extractFunction("EnsembleConfigurationParameterFileGet")

he.loadIncludeFile(atp("AeroBasicCommands.h"))
motionFuncs = ("EnsembleMotionDisable",
               "EnsembleMotionEnable",
               "EnsembleMotionFaultAck",
               "EnsembleMotionHome",
               "EnsembleMotionLinear",  # Renames
               "EnsembleMotionMoveAbs",
               "EnsembleMotionSetupRampRateAccelAxis",  # Renames
               "EnsembleMotionSetupRampRateDecelAxis",  # Renames
               "EnsembleMotionSetupRampRateAccelCoordinated",  # Renames
               "EnsembleMotionSetupRampRateDecelCoordinated",  # Renames
               "EnsembleMotionSetupScurve",
               "EnsemblePSOControl",
               "EnsemblePSOOutputControl",
               "EnsemblePSOOutputPulse",
               "EnsemblePSOOutputToggle",
               "EnsemblePSOOutputWindow",
               "EnsemblePSOPulseCyclesOnly",
               "EnsemblePSOTrackInput",
               "EnsemblePSOWindowInput",
               "EnsemblePSOWindowOn",
               "EnsemblePSOWindowRange",
               "EnsembleTuningSetGain")
for functionName in motionFuncs:
    he.extractFunction(functionName)

# he.loadIncludeFile(atp("EnsembleDataCollectionInfo.h"))
# he.extractAndSimplifyEnum("DATASIGNAL")

# he.loadIncludeFile(atp("EnsembleDataCollection.h"))
# he.extractStruct("Ensemble_DATACOLLECTION_STATUS")
# functionList = ("EnsembleDataCollectionConfigAddSignal",
#                 "EnsembleDataCollectionConfigApply",
#                 "EnsembleDataCollectionConfigCreate",
#                 "EnsembleDataCollectionConfigFree",
#                 "EnsembleDataCollectionConfigGetSignalCount",
#                 "EnsembleDataCollectionConfigSetPeriod",
#                 "EnsembleDataCollectionConfigSetSamples",
#                 "EnsembleDataCollectionDataRetrieve",
#                 "EnsembleDataCollectionGetStatus",
#                 "EnsembleDataCollectionStart",
#                 "EnsembleDataCollectionStop")
# for functionName in functionList:
#     he.extractFunction(functionName)

he.loadIncludeFile(atp("ParameterId.h"))
he.extractAndSimplifyEnum("PARAMETERID")

he.loadIncludeFile(atp("Parameter.h"))
he.extractFunction("EnsembleParameterGetValue")
he.extractFunction("EnsembleParameterGetValueString")
he.extractFunction("EnsembleParameterSetValue")
he.extractFunction("EnsembleParameterSetValueString")

# he.loadIncludeFile(atp("EnsembleStatusItemInfo.h"))
# he.extractAndSimplifyEnum("STATUSITEM")

he.loadIncludeFile(atp("Status.h"))
he.extractFunction("EnsembleStatusGetItem")

he.loadIncludeFile(atp("ErrorCodes.h"))
he.extractAndSimplifyEnum("ErrorCode")
# he.extractStruct("ErrorData")

he.loadIncludeFile(atp("Error.h"))
he.extractFunction("EnsembleGetLastError")
he.extractFunction("EnsembleGetLastErrorString")

he.loadIncludeFile(atp("Information.h"))
# he.extractStruct("Version")
he.extractFunction("EnsembleInformationGetName")  # Replaces Below?
# he.extractFunction("EnsembleInformationGetLibraryVersion")

he.loadIncludeFile(atp("Program.h"))
he.extractFunction("EnsembleProgramGetTaskState")  # Rename + struct
he.extractFunction("EnsembleProgramStop")

he.loadIncludeFile(atp("Commands.h"))
he.extractFunction("EnsembleCommandExecute")
he.extractFunction("EnsembleMotionWaitForMotionDone")
