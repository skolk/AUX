import os, sys

from HeaderExtractor import HeaderExtractor

import pyparsing as pp


def terribleThings():
    '''
    This function runs the msvc preprocessor and was used
    to debug where/when/how eveything came from.  It is left
    here with hope that it will never be needed again.
    Its output is a file names wip.h, and is terrible.
    '''
    targetPath = os.path.join(dalsaIncludePath, "corapi.h")
    winincludes = r"C:\Program Files\Microsoft SDKs\Windows\v7.1\Include"
    someMoreStuff = r"C:\Program Files (x86)\Microsoft Visual Studio 10.0\VC\include"

    quoted = lambda s: '"' + s + '"'

    os.system(cl + " /P " + quoted(targetPath) +
              " /I " + quoted(winincludes) +
              " /I " + quoted(dalsaIncludePath) +
              " /I " + quoted(someMoreStuff))

    # The above command generate corapi.i, which is terrible.
    # LEts clean it up a bit

    terribleFile = open("corapi.i")
    badFile = open("corapi.txt", 'w')
    lastLineIsEmpty = False

    for line in terribleFile:
        # Strip the line number annotation
        if line.strip().startswith("#line"):
            continue

        # Skip repeated empty lines
        thisLineIsEmpty = line.strip() == ""
        if not (thisLineIsEmpty and lastLineIsEmpty):
            badFile.write(line)
        lastLineIsEmpty = thisLineIsEmpty

    badFile.close()

    # And another cleanup pass
    badFile = open("corapi.txt")
    okFile = open("wip.h", "w")
    for n, line in enumerate(badFile):
        #  Skip the MSVC auto-generated schlock
        if n < 67945:
            continue

        # Remove the export symbols.
        line = line.replace("__declspec(dllimport) __stdcall ", "")
        okFile.write(line)

    okFile.close()

# These describe the location of the Dalsa header files, and the output destination
dalsaIncludePath = os.path.join(os.environ["SAPERADIR"], "Include")

newDalsaHeaderPath = sys.argv[1]
dalsaSimplifiedHeaders = open(os.path.join(newDalsaHeaderPath, "cheaders.h"), "w")
dalsaSimplifiedPython = open(os.path.join(newDalsaHeaderPath, "cheaders.py"), "w")

cl = r'C:\"Program Files (x86)"\"Microsoft Visual Studio 10.0"\VC\Bin\amd64\CL.exe'


dhp = lambda i: os.path.join(dalsaIncludePath, i)

corReplacements = {"COR_PACK": "", "CORAPIFUNC": ""}
he = HeaderExtractor(dalsaSimplifiedHeaders, dalsaSimplifiedPython, corReplacements)


# MRG NOTE: These structs appear to be formed uncer a #pragma pack(1) directive
# This means in the binary/ffi form they may not take normal alignments.
# They _might_ be smaller than the alternative, so cffi's allocation strategy
# should be ok for non array-data, but the values of internal
# *Structure member access based on cffi retrieval are not to be trusted.*
# Thankfully we probably dont need to use them anyway
he.loadIncludeFile(dhp("capidef.h"))

# MRG NOTE: This is #defined in the original, but use of this typedef
# makes the debuggin process a bit smoother.
he.manualInsert("typedef UINT32 CORSTATUS;")
he.manualInsert("typedef CORSTATUS (*PCORCALLBACK)( void *context, UINT32 eventType, UINT32 eventCount);")

he.extractStruct("CORADDRESS")
he.extractStruct("_CORHANDLE")
he.extractBasicTD("_CORSERVER")
he.extractBasicTD("_CORXFER")
he.extractBasicTD("_CORACQ")
# he.extractBasicTD("PCORCALLBACK")  #MRG TODO.  Figure out function calling in cffi
he.extractBasicTD("_CORCAM")
he.extractBasicTD("_CORVIC")
he.extractBasicTD("_CORBUFFER")


he.loadIncludeFile(dhp("capictrl.h"))
he.extractFunction("CorManGetLocalServer")
he.extractFunction("CorManGetServerByName")
he.extractFunction("CorManGetServerCount")
he.extractFunction("CorManGetStatusText")

he.loadIncludeFile(dhp("capiman.h"))
fNames = ("CorManOpen", "CorManClose")
[he.extractFunction(name) for name in fNames]


he.loadIncludeFile(dhp("capicam.h"))
fNames = ("CorCamFree", "CorCamLoad", "CorCamNew")
[he.extractFunction(name) for name in fNames]


he.loadIncludeFile(dhp("capivic.h"))
fNames = ("CorVicGetPrm", "CorVicLoad", "CorVicNew", "CorVicFree")
[he.extractFunction(name) for name in fNames]


he.loadIncludeFile(dhp("capiacqp.h"))
fNames = ("CorAcqGetCap", "CorAcqGetCount", "CorAcqGetHandle",
          "CorAcqGetPrm", "CorAcqGetSerialPortName", "CorAcqRelease",
          "CorAcqSetPrm", "CorAcqSetPrms")

[he.extractFunction(name) for name in fNames]

he.loadIncludeFile(dhp("capibuf.h"))
fNames = ("CorBufferClear", "CorBufferFree", "CorBufferNew",
          "CorBufferGetPrm", "CorBufferRead", "CorBufferSetPrm")
[he.extractFunction(name) for name in fNames]

he.loadIncludeFile(dhp("capixfer.h"))
he.extractStruct("CORXFER_DESC")
fNames = ("CorXferAbort", "CorXferAppend", "CorXferConnect",
          "CorXferDisconnect", "CorXferFree", "CorXferGetPrm",
          "CorXferNew", "CorXferSetPrm", "CorXferRegisterCallback",
          "CorXferReset", "CorXferStart", "CorXferSelect",
          "CorXferStop", "CorXferWait")
[he.extractFunction(name) for name in fNames]


# Lastly we extract the #define mess in capiacqd.h
# Based on capiacqd.h lines 11-17

defines = {"NULL": None, "CORDATA_FORMAT": lambda nPages, index, nBits: (((nPages) << 24) | ((index) << 16) | (nBits << 8))}

defines["CORLOG_TYPEID_ERR"] = 0
defines["CORLOG_TYPEID_FAT"] = 1
defines["CORLOG_TYPEID_WRN"] = 2
defines["CORLOG_TYPEID_INF"] = 3

defines["CORSTATUS_LEVEL_ERR"] = 0
defines["CORSTATUS_LEVEL_FAT"] = 1
defines["CORSTATUS_LEVEL_WRN"] = 2
defines["CORSTATUS_LEVEL_INF"] = 3


def parseDefine(line):
    lineEnding = pp.Suppress(pp.LineEnd() | pp.Literal("//"))
    rhs = pp.Group(pp.OneOrMore(pp.Word(pp.alphanums + "_+-><()|,")))

    define = pp.Suppress(pp.Literal("#define"))
    simpleParser = define + pp.Word(pp.alphanums + "_") + rhs + lineEnding

    lambdaParser = define + pp.Group(pp.Regex('[_A-Z0-9]+\(') + pp.SkipTo(")", include=True)) + rhs + lineEnding

    # Let's try the lambda first.  If it fails, try the other one.
    #print(line)

    r = lambdaParser.searchString(line)
    if len(r) > 0 and len(r[0]) > 0:
        line = line.replace("#define", "")
        line = line.replace("(", " = lambda ", 1)
        line = line.replace(")", ": ", 1)

        line = line.replace("//", "#")
        line = line.strip()

        exec(line, defines)

    r = simpleParser.searchString(line)
    if len(r) > 0 and len(r[0]) > 0:
        define, lhs_d, *rhs_d = line.split()
        toExec = lhs_d + " = " + " ".join(rhs_d)
        toExec = toExec.replace("//", "#")

        exec(toExec, defines)


for fileName in ["capiser.h", "capidef.h", "capiacqd.h", "capivic.h", "capibuf.h", "corstat.h", "capixfer.h"]:
    definesFile = os.path.join(dalsaIncludePath, fileName)

    dc = 0
    print("Analyzing ", fileName, ":", end="")
    for n, line in enumerate(open(definesFile).readlines()):
        # print(fileName, line)
        line = line.lstrip()
        if not line.startswith("#define"):
            continue

        # Already hacked in above
        # Below pattern allows "#define CORSTATUS_WHATEVER"
        if line.startswith("#define CORSTATUS\t"):
            continue

        # This normally sticks the __declspec(dllexport) __stdcall in front. bleh.
        if "#define CORAPIFUNC" in line:
            parseDefine("#define CORAPIFUNC")
            continue
        if "#define CORAPIEXPORT" in line:
            parseDefine("#define CORAPIEXPORT")
            continue

        # Requires compiler
        if "CORACQ_PRM_EVENT_SERVER" in line:
            continue
        # Hacky way to get max of UINT32
        if "CORACQ_VAL_EXT_TRIGGER_FRAME_COUNT_INFINITE" in line:
            continue

        # Believed Missing in API
        if "CORACQ_VAL_SHARED_CONTROL_DISABLE" in line:
            continue
        if "CORVIC_PRM_INT_LINE_TRIGGER_MODE" in line:
            continue

        # Requires compile to know
        if "sizeof" in line:
            continue
        # Strange struct-pointer cast
        if "CORBUFFERLOCALINFO" in line:
            continue

        # Comes up using CORXFER_PRM before its defined
        if "CORXFER_CAP_NB_OUTPUT_FRAMES" in line:
            continue
        if "CORXFER_CAP_NB_INPUT_FRAMES" in line:
            continue

        # Fix up naughty uint casting.  Gross!
        if "(UINT32) -1" in line:
            line = line.replace("(UINT32) -1", str(2 ** 32 - 1))

        if line.strip().endswith("LL") and not "NULL" in line:
            line = line.replace("LL", "")

        # Run the actual parse against this line
        parseDefine(line)

        # Print some progress dots.
        print(".", end="")
        if (dc % 80) == 0:
            print()
        dc += 1
    print("\n\t%i defines extracted from %s" % (len(defines), fileName))

dalsaSimplifiedPython.write("###################################\n")
dalsaSimplifiedPython.write("# #define extraction dump follows #\n")
dalsaSimplifiedPython.write("###################################\n")

dalsaSimplifiedPython.write("defines = {\n")
for k in sorted(defines.keys()):
    v = defines[k]
    if callable(v) or k is "__builtins__":
        continue
    dalsaSimplifiedPython.write('    "' + k + '": ' + str(v) + ',\n')

dalsaSimplifiedPython.write("}\n")

if __name__ == "__main__":
    import cffi
    f = cffi.FFI()
    print()
    print("Doign a test load of the library:")
    f.cdef(open(os.path.join(newDalsaHeaderPath, "cheaders.h")).read())
    lib = f.dlopen("corapi.dll")
    print("\tSuccess!")

    print()
    print("Basic Function tests:")
    lib.CorManOpen()
    lib.CorManGetLocalServer()
    print("\tSuccess!")
