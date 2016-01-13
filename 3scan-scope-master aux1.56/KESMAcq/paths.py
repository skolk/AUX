import json, os, socket
import urllib.request

from KESMAcq.shared.Struct import Struct

_userHomeFolder = os.path.expanduser("~")
_defaultConfigFilePath = os.path.join(_userHomeFolder, ".3scan-kesm-config.json")
_defaultConfigName = socket.gethostname()


def checkConfigFile(configPath):
    # Check if it exists
    if not os.path.exists(configPath):
        print("Config file does not exist.")
        return False

    # Check if it is valid json, (also permissions)
    try:
        json.load(open(configPath))
    except:
        print("Failed to load config file: %s" % configPath)
        return False
    return True


def downloadConfigFile(configName, cfgPath):
    url = "http://3scan-config.s3.amazonaws.com/" + configName + ".json"
    print("\tRetrieving the config from", url)
    urllib.request.urlretrieve(url, filename=cfgPath)


def ensureWorkingConfig(configPath):
    while not checkConfigFile(configPath):
        print("Specified config file (%s) does not exist or is corrupted." % configPath)
        print("Please type the KESM name you want to retrieve a config file for,")
        print("hit enter to retrieve the one for your system, or type Ctrl+C to exit.")
        newName = input("KESM Name (%s): " % _defaultConfigName)
        if newName == "":
            newName = _defaultConfigName
        downloadConfigFile(newName, configPath)

    return Struct(json.load(open(configPath)))


def getConfig(configPath=_defaultConfigFilePath):
    pathsStruct = ensureWorkingConfig(configPath)

    # Munge the ZMQ addresses/ports into a URI
    g = pathsStruct.globals
    g.zmqEndpoints = {}
    for serverName, serverIP in g.serverIPs.items():
        g.zmqEndpoints[serverName] = "tcp://" + serverIP + ":" + g.zmqPorts[serverName]

    return pathsStruct
