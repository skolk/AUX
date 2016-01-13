import json, os, subprocess, tempfile, sys

import KESMAcq
from KESMAcq.shared import findMyDirectory
from KESMAcq.shared.ManagedProcess import ManagedProcess


def recursiveLinkage(source, destination, quiet=True):
    source = os.path.abspath(source)
    destination = os.path.abspath(destination)
    assert os.path.isdir(source)

    def qprint(*args):
        if not quiet:
            print(*args)

    # Already linked
    if os.path.islink(destination):
        qprint("\tAlready linked. Skipping")
        return

    # If the destination _folder_ does not exist, we can just link and be done
    if not os.path.isdir(destination):
        qprint("\tLink ", source, "-->", destination)
        os.symlink(source, destination)
        return

    # The destination folder exists, so we have to populate links _into_ it
    for fName in os.listdir(source):
        qprint("\t", fName)
        subSource = os.path.join(source, fName)
        subDestin = os.path.join(destination, fName)

        # Directory to directory
        if os.path.isdir(subSource):
            recursiveLinkage(subSource, subDestin)
            continue

        if os.path.isfile(subSource):
            if os.path.isfile(subDestin) or os.path.islink(subDestin):
                continue
            qprint("Link ", subSource, "-->", subDestin)
            os.symlink(subSource, subDestin)
            continue


def recursiveUnlinkage(directory):
    for root, dirs, files in os.walk(directory):
        thisDir = os.path.join(directory, root)
        for f in files:
            fp = os.path.join(thisDir, f)
            if os.path.islink(fp):
                os.unlink(fp)

        symFolderList = [os.path.join(thisDir, d) for d in dirs if os.path.islink(os.path.join(thisDir, d))]

        for folder in symFolderList:
            os.unlink(folder)
            fName = os.path.split(folder)[-1]
            dirs.remove(fName)


class PendingUnlinkage:
    def __init__(self, dir):
        self._dir = dir

    def __enter__(self):
        pass

    def __exit__(self, type, value, traceback):
        recursiveUnlinkage(self._dir)


class MeteorServer(ManagedProcess):
    def __init__(self, paths):
        assert hasattr(paths.meteor, "serverName"), "Needs server name to be passed to choose starting server"
        self.serverName = paths.meteor.serverName
        self.serverSettings = getattr(paths.meteor, self.serverName)
        ManagedProcess.__init__(self, paths)

    def writeMeteorSettingsFile(self):
        """
        This writes out a meteor setting file to a temporary file.
        It hangs onto a reference to this file to make sure it is not
        GC'ed before its time.  This _will_ not work on windows.  See:
        https://docs.python.org/3.3/library/tempfile.html#tempfile.NamedTemporaryFile
        """

        # Construct a dict of all the server URIs by name,
        # taking into account that some of them might have an overridden baseURI
        serverURIs = {}
        for serverName, serverSettings in self.paths.meteor.items():
            if hasattr(serverSettings, "baseURI"):
                uri = serverSettings.baseURI + ":" + serverSettings.webPort
            else:
                uri = serverName + "." + self.paths.globals.baseURI
            serverURIs[serverName] = uri

        settingsDict = {
            "public": {
                "serverName": self.serverName,
                "baseURI": self.paths.globals.baseURI,
                "serverURIs": serverURIs,
                "configName": self.paths.globals.configName
            },
            "paths": self.paths.toDict()
        }

        # We hang onto settingsFile so that it does not get gc'ed.  When it does, it is deleted.
        self.settingsFile = tempfile.NamedTemporaryFile(mode="w", prefix="meteor-settings-", suffix=".json")
        json.dump(settingsDict, self.settingsFile, sort_keys=True, indent=4, separators=(',', ': '))
        self.settingsFile.flush()

        self.logger.info("Wrote meteor settings file to: " + self.getMeteorSettingsFilePath())

    def linkSharedAssets(self):
        # MRG NOTE!  This assumes that we are able to write to the python module path!
        # This will likely fail for non-conda installer based installs
        serverDirectory = self.computeServerDirectory()
        os.chdir(serverDirectory)

        # Link all the files in the subdirectories of webShared
        recursiveLinkage("../webShared/public", "public")
        recursiveLinkage("../webShared/packages", "packages")
        recursiveLinkage("../webShared/lib", "lib")

        # For these folders, we're adding files to a folder that already
        # exists, so put the new files in a "shared" subdir that we can gitignore
        os.makedirs("client/shared", exist_ok=True)
        recursiveLinkage("../webShared/client", "client/shared")
        os.makedirs("server/shared", exist_ok=True)
        recursiveLinkage("../webShared/server", "server/shared")

    def getMeteorSettingsFilePath(self):
        """Return the absolute path of the meteor settings json file for this server."""
        directory = tempfile.gettempdir()
        name = self.settingsFile.name
        return os.path.join(directory, name)

    def computeServerDirectory(self):
        """Find which directory this type of server is defined in."""
        KESMAcqDirectory = findMyDirectory(KESMAcq.__file__)
        return os.path.join(KESMAcqDirectory, "web", self.serverSettings.serverType)

    def launchMeteor(self):
        """
        Launch a meteor server.  This includes making a config file based
        on the in passed paths directory, and ajdusting it based on the
        serverName.
        """

        # Figure out where I need to launch from, and go there
        os.chdir(self.computeServerDirectory())

        # Create a new set of environment variables for the Meteor process.
        newEnv = os.environ.copy()
        newEnv["MONGO_URL"] = self.paths.mongo.URI
        newEnv["MONGO_OPLOG_URL"] = self.paths.mongo.OplogURI
        newEnv["PORT"] = self.serverSettings.webPort

        if hasattr(self.serverSettings, "baseURI"):
            # Local override
            newEnv["ROOT_URL"] = "http://" + self.serverSettings.baseURI + ":" + self.serverSettings.webPort
        else:
            newEnv["ROOT_URL"] = "http://" + self.serverName + "." + self.paths.globals.baseURI

        # Fix the path variable for this process so
        # node finds the right python for building extensions
        newEnv["PATH"] = "/usr/bin:" + newEnv["PATH"]

        settingsFilePath = self.getMeteorSettingsFilePath()
        callTuple = ("meteor", "--port", newEnv["PORT"], "--settings", settingsFilePath)
        subprocess.call(callTuple, env=newEnv)
        sys.exit(0)

    def setup(self):
        self.linkSharedAssets()
        self.writeMeteorSettingsFile()

    def loop(self):
        with PendingUnlinkage("."):
            self.launchMeteor()
