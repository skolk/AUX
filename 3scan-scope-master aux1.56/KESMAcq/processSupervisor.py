import importlib, json, os, psutil, random, socket, time
from threading import Timer

import pymongo

import KESMAcq
from KESMAcq.shared import js_time, findMyDirectory, meteorID
from KESMAcq.shared.ZMQLogger import ZMQLogger
from KESMAcq.shared.Struct import Struct
from KESMAcq.shared.Printer import Printer

# Process Types
jsonFilePath = os.path.join(findMyDirectory(__file__), "web", "systemManager", "private", "allowedProcesses.json")
allowedProcesses = json.load(open(jsonFilePath))["allowedProcesses"]


def getProcessClass(className):
    """
    Imports the module for the given class name.  This runs lazily, so
    we don't need to import modules for which we don't have dependencies.
    """
    assert className in allowedProcesses, "class name %s not in allowed processes" % className

    # First we get the module.
    module = importlib.import_module(".".join(["KESMAcq", "processes", className]))
    # The class we want is an attribute of the module object returned by the import.
    return getattr(module, className)

HEARTBEAT_SECONDS = 10
time_of_death = lambda: js_time() + HEARTBEAT_SECONDS * 1000


def launchUnsupervisedProcess(processName, paths):
    pClass = getProcessClass(processName)
    pInstance = pClass(paths)
    pInstance.start()
    pInstance.join()


def diff_dicts(current_dict, past_dict):
    """
    This is the original functionality for simple (not nested) dicts:
        Compares current_dict and past_dict and returns
        (added, removed, changed, unchanged) keys
    """
    set_current, set_past = set(current_dict.keys()), set(past_dict.keys())
    intersect = set_current.intersection(set_past)
    added = list(set_current - intersect)
    removed = list(set_past - intersect)
    changed = list(element for element in intersect if past_dict[element] != current_dict[element])
    unchanged = list(element for element in intersect if past_dict[element] == current_dict[element])
    return added, removed, changed, unchanged


# should be able to wrap an arbitrary subclass of Process
class ProcessWrapper(Struct):
    '''
    This modules has 2 roles
    1.) Starting/stopping/restarting a process
    2.) Provide a handle by which data about the wrapped process can be retrieved
    '''
    def __init__(self, supervisor, procDoc, maxCrashCount=3):
        # Incoming attr storage
        # NB: do not hold onto procDoc, its reactive
        self.logger = supervisor.logger
        self.paths = supervisor.paths
        self._id = procDoc['_id']
        self.className = procDoc["className"]

        # Class Def that we will instanciate on .start()
        self.processClass = getProcessClass(self.className)

        self.startTime = None
        self.errorString = ''
        self._initProcess()

        self.startCount = 0
        self.maxStartCount = maxCrashCount + 1
        self.startPending = True
        self.givenUp = False

        self.hasNewStatus = True
        self.oldStatus = self.status()

    def _initProcess(self):
        self.process = self.processClass(self.paths)
        self.process.daemon = True

    # retrieve a status object to send to the server
    def status(self):
        return {'isRunning': self.process.is_alive(),
                'startTime': self.startTime,
                'crashCount': self.startCount - 1}

    def start(self):
        self.process.start()
        self.startTime = time.time()
        self.startCount += 1
        self.startPending = False

    def stop(self):
        # If not dead.  kill.
        if self.process.is_alive():
            self.process.terminate()

    def checkForUpdates(self):
        if self.process.is_alive():
            self.process.join(0)

        self.possiblyRelaunch()

        newStatus = self.status()
        self.hasNewStatus = (self.oldStatus != newStatus)
        self.oldStatus = newStatus

        return self.hasNewStatus

    def restart(self):
        self.logger.info('Restarting process %s %s. . .' % (self.className, self._id))
        self._initProcess()

        # Startup again in a few seconds
        self.startPending = True
        Timer(random.uniform(3, 7), self.start).start()

    def possiblyRelaunch(self):
        if self.process.is_alive():
            return

        if self.givenUp:
            return

        if not self.startPending:
            self.logger.error('Process %s %s crashed!' % (self.className, self._id))

        if self.hasLivesLeft() and not self.startPending:
            self.restart()

        if not self.hasLivesLeft():
            self.logger.error('Process %s %s has too many crashes, giving up.' % (self.className, self._id))
            self.givenUp = True

    def hasLivesLeft(self):
        return self.startCount < self.maxStartCount


class ProcessSupervisor(object):
    def __init__(self, paths, debugProcess=True):
        self.paths = paths
        self.debugProcess = debugProcess
        self.wrappedProcesses = {}
        self.hostname = socket.gethostname()

        self._dbPrint = Printer(self.debugProcess)

        # Barf some initialzation details, then start the connection
        self._dbPrint('Created ProcessSupervisor with hostname: ', self.hostname)

    def setup(self):
        '''
        This sets up the internal state of the process supervisor.
        This gets called any time that the connection get reestablished,
        and does the various tasks of killing and starting up processeas
        as necessary based on the newest requrested process datas.
        '''
        zmqURI = self.paths.globals.zmqEndpoints.log
        self.logger = ZMQLogger("Process Supervisor " + self.hostname, zmqURI)
        self._dbPrint('ProcessSupervisor.setup()')

        c = pymongo.MongoClient(self.paths.mongo.externalURI, w=1)
        self.machines = c.meteor.machines
        self.processes = c.meteor.processes

        self.registerMachine()

        self.logger.info("ProcessSupervisor initialized.")

    def registerMachine(self):
        machine = self.machines.find_one({'hostname': self.hostname})

        if machine is None:
            self.logger.warn('New machine connected: ' + self.hostname)
            self.machineId = self.machines.insert({
                '_id': meteorID(),  # use Meteor-style _id
                'hostname': self.hostname
            })
        else:
            self.logger.info('Existing machine connected: ' + self.hostname)
            self.machineId = machine['_id']

        # Update some things
        toSet = {
            "connected": True,
            "shouldBeUpdated": False,  # MRG NOTE: Vestigal
            "startTime": js_time(),
            "status": self.getMachineStatus()
        }
        if hasattr(self.paths, "KESMMain"):
            toSet["kesmName"] = self.paths.KESMMain.kesmName
        self.machines.update({'_id': self.machineId}, {"$set": toSet})

    def reactToProcessDBChanges(self):
        oldProcessDict = self.wrappedProcesses
        newProcessDict = {p['_id']: p for p in self.processes.find({'machineId': self.machineId})}

        # Compute what changed (possibly nothing if this is the initial connection)
        added, removed, changed, unchanged = diff_dicts(newProcessDict, oldProcessDict)

        # Start added processeas
        for procId in added:
            self.onAdded(procId, newProcessDict[procId])

        for procId in removed:
            self.onRemoved(procId)

        for procId in changed:
            # if the user clicked to start or stop the process
            # while we were disconnected, then let's respond to that
            oldProcState = oldProcessDict[procId]
            newProcState = newProcessDict[procId]

            self.onChanged(newProcState, oldProcState)

    def wrapProcess(self, procDoc):
        return ProcessWrapper(self, procDoc)

    ########################################################
    # `observe` callbacks to maintain correct process list #
    ########################################################
    def onAdded(self, _id, obj):
        if _id in self.wrappedProcesses:
            self.logger.warn("Process %s already exists." % _id)
            return

        wrappedProcess = self.wrapProcess(obj)
        self.wrappedProcesses[_id] = wrappedProcess

        self.logger.info('Starting %s: %s' % (wrappedProcess.className, _id))
        wrappedProcess.start()

        self.updateProcessStatus(wrappedProcess)

    def onChanged(self, newObj, oldObj):
        # Get the ID of the process with changes
        procId = newObj['_id']

        # Get the processWrapper associated with that id
        wrappedProcess = self.wrappedProcesses[procId]

        testingRequested = newObj.get('shouldRunTests', False)
        if testingRequested:
            wrappedProcess.runTests()
            self.processes.update({'_id': procId}, {"$set": {"shouldRunTests": False}})

    def onRemoved(self, _id):
        if _id not in self.wrappedProcesses:
            self.logger.warn('No process with that _id, aborting "remove" operation.')
            return

        className = self.wrappedProcesses[_id].className
        self.wrappedProcesses[_id].stop()
        del self.wrappedProcesses[_id]
        self.logger.info('Stopped %s: %s' % (className, _id))

    def updateProcessStatus(self, wrapper):
        self.processes.update({'_id': wrapper._id}, {"$set": {"status": wrapper.status()}})

    def getMachineStatus(self):
        return {
            'cpu': psutil.cpu_percent(interval=0),
            'memory': psutil.virtual_memory()[2],
            'gitBranch': KESMAcq.__version__ + "-" + KESMAcq.__build__,
            'gitSHA': KESMAcq.__githash__,
            'heartbeat': True
        }

    def updateMachineStatus(self):
        self.machines.update({'_id': self.machineId}, {"$set": {"status": self.getMachineStatus()}})

    def run(self):
        self.setup()

        self.logger.info("ProcessSupervisor starting run loop.")
        statusUpdateInterval = 1.0
        while True:
            time.sleep(statusUpdateInterval)

            self.updateMachineStatus()
            self.reactToProcessDBChanges()
            for wrapper in self.wrappedProcesses.values():
                if wrapper.checkForUpdates():
                    self.updateProcessStatus(wrapper)
