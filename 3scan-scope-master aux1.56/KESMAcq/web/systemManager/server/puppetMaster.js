/* globals
Processes:true, Machines:true, ProcessTypeIsAllowed,
UserExists, DocExistsIn, NonEmptyString, IdExistsIn,
AllowedProcesses
*/

//////////////////////////////////////////////////////
// WARNING: `process` IS A NODE BUILT-IN, DON'T USE IT
// AS A VARIABLE NAME OR NOTHIN.
//////////////////////////////////////////////////////

/*

Each process has the following fields:

- status: {
  - startTime: unix epoch
  - isRunning: bool
  - error: string
  - crashCount: integer
  - testResults: array of test result objects
- }
- machineId: string
- className: string (which python class to be instantiated)

There are multiple possible workflows / contingencies / calamities.
I'll go through the major ones here.

When a user drags a new process onto a machine, the following happens:

1) server adds process to db, with 'status.isRunning': false
2) server publishes this process to the web clients who need to see it
3) machine adds process to list of processes that should be running
4) machine starts process
5) machine tells the server (by updating the db) that its process is running
6) server publishes updated database object to human clients, who see it
on their screen as running (this happens through a normal Meteor publish function)

When a user clicks the 'stop' or 'X' button on a running process:

1) server removes process's db entry
2) server publishes removal of process to machine, which removes it from
its list of processes to try to run.
3) server publishes removal of process to human clients, which remove
it from their GUIs.
4) machine kills process

When a process crashes on a machine:

1) machine increments the process's 'status.crashCount' in the db
2) if the process has crashed too many times, the machine marks it as dead
3) machine tells server (by updating the db) about the changes to the process
4) server publishes updated process to human clients (if the process is dead,
they'll see that too, with a button to restart it).

When a user clicks the restart button on a process:

1) client sends method to server telling it to restart the process
2) server executes same procedure as the case where user clicked 'stop'
3) server executes same procedure as the case where user dragged a new process
onto that machine with the same parameters (processType, maxCrashCount, etc.)

In the course of restarting a process, the process's db entry will be removed entirely,
and a new one will be created with the same parameters, but notably not the same _id.

*/

var logger = new Logger({
  module: 'processes',
  printToConsole: true
});

Meteor.publish('processes', function() {
  return Processes.find();
});

Meteor.publish('machines', function() {
  return Machines.find();
});

Meteor.startup(function() {
  var processesJSON = JSON.parse(Assets.getText('allowedProcesses.json'));
  AllowedProcesses.remove({});
  _.each(processesJSON.allowedProcesses, function(className) {
    AllowedProcesses.insert({ className: className });
  });
});

Meteor.publish('allowed-processes', function() {
  return AllowedProcesses.find();
});

var MACHINE_TIMEOUT_SECONDS = 10;

var updateRobotsPresenceRecursive = function() {
  // When a ProcessSupervisor sends a machine status update, it
  // sets the 'status.heartbeat' field to true.  We interpret this
  // as a semaphore and take the opportunity to set the timeOfDeath
  // server-side.  Client time is not to be trusted!
  // This check for the recent heartbeat could run separately from the check
  // for stale heartbeat, in principle.
  Machines.update({ 'status.heartbeat': true }, { $set: {
    connected: true,
    'status.heartbeat': false,
    timeOfDeath: +new Date() + 1000 * MACHINE_TIMEOUT_SECONDS
  }}, { multi: true });

  // Mark machines as offline if their heartbeat is old.
  var numAffected = Machines.update({
    connected: true,
    timeOfDeath: { $lt: +new Date() }
  }, { $set: {
    connected: false
  }}, { multi: true });

  if (numAffected > 0) {
    logger.info(numAffected + ' machines went offline.');
  }

  // For offline machines, mark their processes as not running.
  var offlineMachineIds = Machines.find({ connected: false }).map(function(machine) {
    return machine._id;
  });

  Processes.update({
    machineId: { $in: offlineMachineIds }
  }, {
    $set: { 'status.isRunning': false } 
  }, { multi: true });

  Meteor.setTimeout(updateRobotsPresenceRecursive, 1000);
};

Meteor.startup(updateRobotsPresenceRecursive);

var pruneProcesses = function() {
  var referencedMachines = _.unique(Processes.find().map(function(proc) {
    return proc.machineId;
  }));

  _.each(referencedMachines, function(machineId) {
    var machineExists = !! Machines.findOne(machineId);
    if (machineExists) {
      return;
    }
    var numRemoved = Processes.remove({ machineId: machineId });
    logger.warn('Removed '+numRemoved+' process(es) for nonexistent machine '+machineId);
  });
};

Meteor.startup(pruneProcesses);

var startProcessOnMachine = function(procClass, machineId) {
  var proc = {
    machineId: machineId,
    className: procClass,
    status: {
      isRunning: false,
      error: null,
      crashCount: 0
    }
  };

  // give the _id back to the client
  var procId = Processes.insert(proc);
  logger.info('Started '+procClass+' on machineId: '+machineId+', procId: '+procId);
  return procId;
};

Meteor.methods({
  // non-robot user calls this to change the set-point
  // of which processes should be running
  startProcessOnMachine: function(procClass, machineId) {
    check(this.userId, UserExists);
    check(machineId, IdExistsIn(Machines));
    check(procClass, ProcessTypeIsAllowed);

    return startProcessOnMachine(procClass, machineId);
  },

  runAllProcessTests: function() {
    check(this.userId, UserExists);

    var numAffected = Processes.update({ 'status.isRunning': true }, {
      $set: { shouldRunTests: true }
    }, { multi: true });

    logger.info("Told "+numAffected+" process(es) to run tests.");
  },

  testProcess: function(procId) {
    check(this.userId, UserExists);
    check(procId, IdExistsIn(Processes));

    var numAffected = Processes.update({
      _id: procId,
      'status.isRunning': true
    }, { $set: { shouldRunTests: true } });

    logger.info("Told "+numAffected+" process(es) to run tests.");
  },

  // this doesn't really restart the same process.  It
  // removes the old process from the db, and then starts a
  // new one of the same type
  restartProcess: function(procId) {
    check(this.userId, UserExists);
    check(procId, NonEmptyString);
    check(procId, DocExistsIn(Processes));

    var proc = Processes.findOne(procId);
    var procClass = proc.className;
    var machineId = proc.machineId;

    Processes.remove(procId);
    logger.info('Removed '+procClass+' process: '+procId);

    return startProcessOnMachine(procClass, machineId);
  },

  removeProcess: function(procId) {
    check(this.userId, UserExists);
    check(procId, IdExistsIn(Processes));

    Processes.remove(procId);
    logger.info('Removed process with _id: '+procId);
  },

  removeMachine: function(machineId) {
    check(this.userId, UserExists);
    check(machineId, IdExistsIn(Machines));

    var machinesRemoved = Machines.remove(machineId);

    if (machinesRemoved === 0) {
      var errorString = 'Failed to remove machine with id: '+machineId;
      logger.error(errorString);
      throw new Meteor.Error(errorString);
    }

    var processesRemoved = Processes.remove({ machineId: machineId });

    logger.info('Removed machine '+machineId+' and '+processesRemoved+' processes.');
  }
});
