/* globals UserExists, NonEmptyString, LOG_LEVELS, GreaterThan, requireLogin, ZMQ */

var ZMQLogSocket;
var moduleLogger;

// Callback functon when zmq port gets messages:
var onLogMessage = Meteor.bindEnvironment(function(msgLvl, msgJSON) {
  try {
    // JSON decode the message. . .
    var logRecord = JSON.parse(msgJSON);

    // handle a type error when getting sent an object in the text field
    if (! _.isString(logRecord.text)) {
      logRecord.text = JSON.stringify(logRecord.text);
    }

    // All messages must specify a valid log level. This check must use a safe
    // reference to Object.hasOwnProperty() for security.
    // See: http://underscorejs.org/#has
    if (! _.has(LOG_LEVELS, logRecord.logLevel)) {
      moduleLogger.warn("Malformed log request, missing logLevel: " + msgJSON);
      return;
    }

    // Call the log function now that we're done transmuting the received message.
    // This function will take the log level and other options from logRecord.
    Logger.insertLog(logRecord);

  } catch (err) {
      // Log the raw data that came over ZMQ with a disclaimer that it was malformed
      moduleLogger.warn("Malformed log request: " + msgJSON + " with log level: " + msgLvl);
      console.log(err);
      return;
  }
});

Logger.startZMQListener = function(portNumber) {
  ZMQLogSocket = ZMQ.socket('sub');
  ZMQLogSocket.identity = 'NodeZMQ';
  ZMQLogSocket.bindSync('tcp://*:' + portNumber);

  // Subscribe to info-, warning-, and error-level messages.
  _.forEach([
    LOG_LEVELS.INFO,
    LOG_LEVELS.WARN,
    LOG_LEVELS.ERROR
    ], function(s) {
    // You have to subscribe to strings, but we store the levels as integers.
    ZMQLogSocket.subscribe(s.toString());
  });

  // Lastly, setup the things to do when a message is received
  // Triggered when ZMQ recieves a message
  ZMQLogSocket.on('message', onLogMessage);
};

Logger.setDebugLogs = function(storeDebug) {
  var dbStr = LOG_LEVELS.DEBUG.toString();
  if(storeDebug) {
    moduleLogger.info("Started storing debug logs.");
    ZMQLogSocket.subscribe(dbStr);
  } else {
    moduleLogger.info("Stopped storing debug logs.");
    ZMQLogSocket.unsubscribe(dbStr);
  }
};

Logger.publishLogs = function() {
  ////////////////////////////////
  // Workhorse logs publication //
  ////////////////////////////////
  Meteor.publish('logs', function(options) {
    check(options, {
      numLogs: Match.Optional(GreaterThan(0)),
      severity: Match.Optional(Match.And(NonEmptyString, Match.Where(function(logLevel) {
        return _.contains(_.keys(LOG_LEVELS), logLevel);
      }))),
      moduleSearch: Match.Optional(NonEmptyString),
      devices: Match.Optional([NonEmptyString])
    });

    // MRG NOTE:  Do we need this block given the above check calls?
    options = _.extend({
      numLogs: 100,
      severity: 'INFO'
    }, options);

    // This feels a little overly complicated, but we're just trying to
    // get an array like ["WARN", "ERROR"] to use to filter the log messages
    // in the mongo collection.

    // First get an array of the integer values representing each enabled log level.
    var enabledLogLevels = _.filter(LOG_LEVELS, function(level, name) {
      return level >= LOG_LEVELS[options.severity];
    });

    // Then do an inverse lookup in the LOG_LEVELS object to find the names
    // corresponding to those integers.
    var enabledLogLevelNames = _.map(enabledLogLevels, function(level) {
      return _.invert(LOG_LEVELS)[level];
    });

    // Now start constructing the search string.
    var query = { logLevel: { $in: enabledLogLevelNames } };

    // The `moduleSearch` option is the contents of the user's search string.
    if (_.has(options, 'moduleSearch')) {
      query['module'] = new RegExp(options.moduleSearch, 'i');
    }

    if (_.has(options, 'devices')) {
      query['deviceName'] = { $in: options.devices };
    }

    return Logs.find(query, {
      sort: [['time', 'desc']],
      limit: options.numLogs
    });
  });
};

Logger.bindToPort = function(logPort) {
  // Logs should expire after a week, using Mongo's TTL indexes.
  // NOTE: You have to run a separate command to change this.
  // Re-running _ensureIndex with a different value will not work. See:
  // http://docs.mongodb.org/manual/tutorial/expire-data/
  var logExpirationSeconds = 3600 * 24 * 7;
  Logs._ensureIndex({ createdAt: 1 }, { expireAfterSeconds: logExpirationSeconds });
  Logs._ensureIndex({ time: 1 });

  // This logger will be for tracking the status of this module.
  moduleLogger = new Logger({
    module: 'node-zmq-backend',
    printToConsole: true,
  });

  // Startup the ZMQ listener
  Logger.startZMQListener(logPort);
  moduleLogger.debug("Initialized ZMQ logs.");

  // Reset the debug logs property on systemManager reboots
  var hasDBDoc = !! SharedProperties.findOne({ property: 'storeDebugLogs' }); 
  if(! hasDBDoc) {
    moduleLogger.warn('Resetting storeDebugLogs property to false.');
    SharedProperties.insert({
      property: 'storeDebugLogs',
      value: false,
      requestedValue: false,
      acknowledged: true,
      writable: true
    });
  }

  // Start or stop debug subscriptions based on the value in the properties.
  SharedProperties.find({ property: 'storeDebugLogs' }).observe({
    changed: function(newProp, oldProp) {
      // MRG NOTE: Does this need to be requested value?
      if (newProp.value === oldProp.value)
        return;
      Logger.setDebugLogs(newProp.value);
    }
  });

};

Logger.bindAndPublish = function(logPort) {
  Logger.bindToPort(logPort);
  Logger.publishLogs();
};
