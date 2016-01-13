#!/usr/bin/env python
import argparse, sys
from KESMAcq.paths import getConfig


def parseAndRun():
    parser = argparse.ArgumentParser(description='Launch the various parts which make up our fine KESM.')

    # Setup the two launchers
    parser.add_argument("-p", "--process", help="Launch a single process instance for testing.", nargs=1)
    parser.add_argument("-s", "--server", help="Name of meteor server to launch", nargs=1)
    parser.add_argument("-i", "--importTest", help="Check all imports and report version numbers.", action="store_true")

    args = parser.parse_args()

    # Check for utility run requests
    if args.importTest:
        testImports()
        sys.exit(0)

    paths = getConfig()

    # Imported here so testing can happen before a failed import
    from KESMAcq.processSupervisor import ProcessSupervisor, launchUnsupervisedProcess

    if args.process:
        launchUnsupervisedProcess(args.process[0], paths)
    elif args.server:
        assert args.server[0] in paths.meteor, "Not a vaild server name"
        paths.meteor.serverName = args.server[0]
        launchUnsupervisedProcess("MeteorServer", paths)
    else:
        print("No arguments specified, so launching client.")
        supervisor = ProcessSupervisor(paths)
        supervisor.run()
        sys.exit(0)


def simpleImportTest(moduleName):
    from importlib import import_module
    try:
        mod = import_module(moduleName)
        if hasattr(mod, "__version__"):
            return mod.__version__
        elif hasattr(mod, "version"):
            return mod.version
        else:
            return "Unknown"
    except ImportError:
        return None


def testImports():
    print("Testing Imports:")
    print("================")
    modsToTest = ["zmq", "pymongo", "numpy", "scipy"]
    versions = {module: simpleImportTest(module) for module in modsToTest}

    # Also the version of the c/cpp zmq binaries
    # above is only the python wrapper version
    if simpleImportTest("zmq"):
        import zmq
        versions["zmq-binary"] = zmq.zmq_version()

    # Python Version
    versions["cPython"] = "%i.%i.%i" % sys.version_info[0:3]

    # Then print em out
    for mName in sorted(versions.keys()):
        print(mName.ljust(11) + ": " + str(versions[mName]))

if __name__ == "__main__":
    parseAndRun()
