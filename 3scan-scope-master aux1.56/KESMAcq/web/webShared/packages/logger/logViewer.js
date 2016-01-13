/* globals Logs, Logger, LOG_LEVELS, DeviceNames, getProperty */

Session.setDefault('numLogs', 100);
Session.setDefault('logSeverity', 'INFO');
Session.setDefault('moduleSearch', '');

var possibleNumLogs = [
  20,
  40,
  60,
  80,
  100,
  120,
  140,
  160,
  180,
  200,
  300,
  500,
  1000
];

Template.registerHelper('possibleNumLogs', function() {
  return possibleNumLogs;
});

Template.registerHelper('LOG_LEVELS', function() {
  return _.keys(LOG_LEVELS);
});

// Returns a sorted list of all the device names in the logs.
// TAB TODO: search the entire logs collection for this, not just the locally available ones.
var getDeviceNames = function() {
  return DeviceNames.find().map(function(device) {
    return device.deviceName;
  });
};

var isDeviceShown = function(deviceName) {
  return Session.get('_logViewerDeviceDisplay')[deviceName];
};

var setDeviceShown = function(deviceName, value) {
  var devices = Session.get('_logViewerDeviceDisplay');
  devices[deviceName] = value;
  Session.set('_logViewerDeviceDisplay', devices);
};

// Returns an array of dictionaries that looks like [{'green': true}, {'red': false}]
Template.registerHelper('_logViewerDeviceArray', function() {
  return _.map(getDeviceNames(), function(deviceName) {
    return {
      deviceName: deviceName,
      deviceShown: isDeviceShown(deviceName)
    };
  });
});

Session.setDefault('_logViewerDeviceDisplay', {});
Tracker.autorun(function() {
  var deviceDict = Session.get('_logViewerDeviceDisplay');
  var oldNames = _.keys(deviceDict);
  var newNames = getDeviceNames();

  var added = _.difference(newNames, oldNames);
  var removed = _.difference(oldNames, newNames);

  _.each(added, function(deviceName) {
    console.log('Added new device: ' + deviceName);
    deviceDict[deviceName] = true;
  });
  // Don't remove old devices. Keep our setting (true or false) in case they come back.
  // _.each(removed, function(deviceName) { delete deviceDict[deviceName]; });

  Session.set('_logViewerDeviceDisplay', deviceDict);
});

Template._logViewerUI.rendered = function() {
  $('#num-logs-input').val(Session.get('numLogs'));
  $('#log-severity-input').val(Session.get('logSeverity'));
  $('#module-search-input').val(Session.get('moduleSearch'));
};

Template._logViewerUI.events({
  'change #num-logs-input': function(event, template) {
    Session.set('numLogs', parseInt($('#num-logs-input').val(), 10));
  },
  'change #log-severity-input': function(event, template) {
    Session.set('logSeverity', $('#log-severity-input').val());
  },
  'keyup #module-search-input': _.debounce(function(event, template) {
    Session.set('moduleSearch', $('#module-search-input').val());
  }, 100),
  'click #clear-module-search-button': function(event, template) {
    Session.set('moduleSearch', '');
    $('#module-search-input').val('');
  }
});

Template._logViewerStoreDebugLogs.helpers({
  changing: function() {
    var prop = getProperty('storeDebugLogs');
    return prop.value !== prop.requestedValue;
  }
});

Template._logViewerDeviceButton.helpers({
  classForDevice: function() {
    return this.deviceShown? 'btn-primary' : '';
  }
});

Template._logViewerDeviceButton.events({
  'click': function(event, template) {
    event.preventDefault();

    var deviceDict = template.data;
    console.log(deviceDict);

    setDeviceShown(deviceDict.deviceName, ! deviceDict.deviceShown);
  }
});

Template._logViewerTable.rendered = function() {
  this.autorun(function() {
    var options = {
      numLogs: Session.get('numLogs'),
      severity: Session.get('logSeverity'),
    };

    var moduleSearch = Session.get('moduleSearch');
    if (moduleSearch !== '') {
      options.moduleSearch = moduleSearch;
    }

    var devices = _.filter(getDeviceNames(), isDeviceShown);
    if (devices.length > 0) {
      options.devices = devices;
    }

    Meteor.subscribe('logs', options, function() {
      console.log('Finished subscribing to logs with options:', options);
    });
  });
};

Template._logViewerTable.helpers({
  logs: function() {
    return Logs.find({}, { sort: [['time', 'desc']] });
  }
});

Template.registerHelper('formatDate', function(date) {
  return new Date(date).toLocaleString();
});

Template.registerHelper('classForLogLevel', function(logLevel, options) {
  var text = options && options.hash.text;
  var tableRow = options && options.hash.tableRow;

  return {
    DEBUG: 'success',
    INFO: tableRow? '' : 'info',
    WARN: 'warning',
    ERROR: 'danger'
  }[logLevel];
});
