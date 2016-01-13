/* global
Logs:true,
LOG_LEVELS:true,
Logger:true,
LOG_COLORS:true,
requireLogin,
ZMQ,
DeviceNames:true
*/

Logs = new Meteor.LoggedInCollection('logs');
DeviceNames = new Meteor.LoggedInCollection("device-names");

LOG_LEVELS = {
  DEBUG: -1,
  INFO: 0,
  WARN: 1,
  ERROR: 2
};

LOG_COLORS = {
  DEBUG: 'greenBright',
  INFO: 'blue',
  WARN: 'yellowBright',
  ERROR: 'redBright'
};

Logger = function(options) {
  var self = this;
  var deviceName = (Meteor.isServer ? "" : "[client]") + Meteor.serverName();

  self.options = _.extend({
    deviceName: deviceName,
    printToConsole: Meteor.isServer,
    consoleSeverity: LOG_LEVELS.INFO,
    module: ""
  }, options);
};

Logger.insertLog = function(logDoc) {
    // The reson this function includes time in it is so that serversided
    // time is used for all logged messages.  This minimizes unpredictable
    // factors from clients with skewed clocks
    var now = new Date();
    // 'time' is integer ms since epoch
    // 'createdAt' is used for the TTL index, so it must be a mongo data-type object.
    logDoc["time"] = +now;
    logDoc["createdAt"] = now;
    Logs.insert(logDoc);
};

// MRG Note: Not sure if this is necessary.  
// npm.require() supports cyclic dependancies, so must be lazy about loading

// Prevent npm's file-searching machinery from running more than once.
var getCliColorModule = _.once(function() {
  return Npm.require('cli-color');
});

_.extend(Logger.prototype, {
  log: function(text, opts) {
    var self = this;

    // The options passed in here will override any of the options
    // of this Logger stored in self.options.
    var options = _.extend(self.options, {
      logLevel: "INFO"
    }, opts);

    // call the console if necessary
    var notableLogLevel = LOG_LEVELS[options.logLevel] >= options.consoleSeverity;
    if (options.printToConsole && notableLogLevel) {
      if (Meteor.isServer) {
        var clc = getCliColorModule();
        var coloredText = clc[LOG_COLORS[options.logLevel]](text);
        console.log(coloredText);
      } else {
        console.log(text);
      }
    }

    // Assemble the document that will be inserted into the database
    var logDoc = {
      text: text,
      module: options.module,
      logLevel: options.logLevel,
      deviceName: options.deviceName
    };
    Logger.insertLog(logDoc);
  },
  debug: function(text) {
    this.log(text, { logLevel: 'DEBUG' });
  },
  warn: function(text) {
    this.log(text, { logLevel: 'WARN' });
  },
  error: function(text) {
    this.log(text, { logLevel: 'ERROR' });
  },

  raiseError: function(text) {
    this.error(text);
    throw new Meteor.Error(text);
  },

  // aliases
  detail: function() { this.debug.apply(this, _.toArray(arguments)); },
  verbose: function() { this.debug.apply(this, _.toArray(arguments)); },
  info: function() { this.log.apply(this, _.toArray(arguments)); },
  err: function() { this.error.apply(this, _.toArray(arguments)); }
});
