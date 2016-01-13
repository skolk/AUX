/* globals
Machines,
Processes,
propertyCollections,
SharedProperties,
getRoundedProp,
ImageCounts:true,
roundIfNumber,
getAllDataForKesmName
*/

ImageCounts = new Meteor.Collection('image-counts');

// This works for either sampleId or knifeId.
var getNumSlices = function(docId, defaultValue) {
  if (_.isUndefined(defaultValue)) {
    defaultValue = "N/A";
  }
  var countEntry = ImageCounts.findOne(docId);
  if (! countEntry) {
    return defaultValue;
  }
  return countEntry.count;
};

Template.dashboardPanelReadout.helpers({
  upDown: function() {
    return this.dtype === 'upDown';
  }
});

var getNumProcessesRunning = function(processClass) {
  return Processes.find({
    className: processClass,
    'status.isRunning': true
  }).count();
};

var isProcessRunning = function(processClass) {
  return getNumProcessesRunning(processClass) > 0;
};

// At least one of each of these processes must be running
// in order for the cluster to be considered operational.
var isClusterOnline = function() {
  return _.every([
    'IOThread',
    'Receptionist',
    'ImageTiler',
    'ImageCompressor',
    'ImageAnalyzer'
  ], isProcessRunning);
};

var getKesmProperty = function(propName, kesmName, defaultValue) {
  var property = propertyCollections[kesmName].findOne({ property: propName });
  return _.isUndefined(property)? defaultValue : property.value;
};

var getTimeInterval = function(start, end) {
  var runTime = ((+new Date(end)) - (+new Date(start))) / 1000;
  var runHours = Math.floor(runTime / 3600);
  runTime %= 3600;
  var runMinutes = Math.floor(runTime / 60);
  var runSeconds = Math.floor(runTime) % 60;

  var runMinutesString = ((runMinutes < 10) ? ('0' + runMinutes.toString()) : runMinutes.toString());
  var runSecondsString = ((runSeconds < 10) ? ('0' + runSeconds.toString()) : runSeconds.toString());

  var runTimeString = (runHours.toString() + ":" + runMinutesString + ":" + runSecondsString);

  return runTimeString;
};


Template.dashboard.events({
  'click .logs-link': function(event, template) {
    event.preventDefault();

    var logServerURI = "http://admin." + Meteor.settings.public.baseURI + '/logs';

    window.open(logServerURI, '_blank');
  }
});

Template.systemPropertyList.helpers({
  panelProperties: function() {
    return [{
      label: 'Cluster Status',
      dtype: 'upDown',
      readoutIfTrue: 'Operational',
      readoutIfFalse: 'Incomplete',
      value: isClusterOnline()
    }, {
      label: 'IOThread',
      dtype: 'upDown',
      readoutIfTrue: 'Running',
      readoutIfFalse: 'Not Running',
      value: isProcessRunning('IOThread')
    }, {
      label: 'Receptionist',
      dtype: 'upDown',
      readoutIfTrue: 'Running',
      readoutIfFalse: 'Not Running',
      value: isProcessRunning('Receptionist')
    }, {
      label: 'Image Analyzers',
      dtype: 'text',
      value: getNumProcessesRunning('ImageAnalyzer')
    }, {
      label: 'Image Compressors',
      dtype: 'text',
      value: getNumProcessesRunning('ImageCompressor')
    }, {
      label: 'Image Tilers',
      dtype: 'text',
      value: getNumProcessesRunning('ImageTiler')
    }, {
      label: 'Save Queue',
      dtype: 'text',
      value: getRoundedProp('waitingImageCount')
    }];
  }
});

/* KESM PROPERTY TEMPLATES */

Template.kesmPanel.helpers({
  active: function() {
    return (this.machine && this.machine.connected) &&
           (this.process && this.process.status.isRunning);
  }
});

Template.kesmPropertyList.created = function() {
  var template = this;
  // Make sure our uptime readout changes over time
  template._currentTime = +new Date();
  template._currentTimeDep = new Tracker.Dependency();
  template.now = function() {
    template._currentTimeDep.depend();
    return template._currentTime;
  };

  template.interval = Meteor.setInterval(function() {
    template._currentTime = +new Date();
    template._currentTimeDep.changed();
  }, 1000);
};

Template.kesmPropertyList.destroyed = function() {
  var template = this;
  Meteor.clearInterval(template.interval);
};

Template.kesmPropertyList.helpers({
  panelProperties: function() {
    var data = this;
    var now = Template.instance().now();

    return [{
      label: 'Start Time',
      dtype: 'text',
      value: (new Date(data.process.status.startTime * 1000)).toLocaleString()
    }, {
      label: 'Up Time',
      dtype: 'text',
      value: getTimeInterval(data.process.status.startTime * 1000, now)
    }, {
      label: 'Scope Mode',
      dtype: 'text',
      value: data.properties['scopeMode']
    }, {
      label: 'Active User',
      dtype: 'text',
      value: data.properties['activeUser'] || 'N/A'
    }, {
      label: 'Current Sample',
      dtype: 'text',
      value: data.sample? data.sample.name : 'N/A'
    }, {
      label: 'Slice Queue',
      dtype: 'text',
      value: data.properties['slice_queue']
    }, {
      label: 'Images for this Sample',
      dtype: 'text',
      value: getNumSlices(data.properties['currentSampleID'])
    }, {
      label: 'Images with this Knife',
      dtype: 'text',
      value: getNumSlices(data.properties['knifeId'])
    }];
  }
});

Template.registerHelper('classForOnline', function(connectionStatus) {
  return (connectionStatus === 'online')? 'text-success' : 'text-warning';
});

Template.registerHelper('classForPercentage', function(percentage) {
  if (percentage <= 50)  {
    return 'text-success';
  } else if (percentage <= 75) {
    return 'text-warning';
  } else {
    return 'text-error';
  }
});

var pushDataToList = function(dataList, dataToPush, maxLength) {
  dataList.push(dataToPush);

  if (dataList.length > maxLength) {
    dataList.shift();
  }
};

// The range of colors to use for different percent values.
// 0 is bluish green, 50 is yellow, 100 is red, and there's a
// smooth gradient in between.
var COLOR_RANGE = {};

_.each(_.range(0, 100, 2), function(num) { // iterate over 0, 2, 4, etc.

  // 0 hue corresponds to red, ~60 to yellow, ~120 to green, ~240 for blue.
  var MAX_HUE = 180;

  // We'll let the hue range between 0 and MAX_HUE, which is bluish and/or greenish.
  var hue = Math.round(MAX_HUE * (100 - num) / 100);

  // should look like "1:2" or "37:38"
  var rangeKey = num + ':' + (num + 1.9);

  // Each color is completely (100%) saturated and at 50% brightness, to maximize contrast.
  COLOR_RANGE[rangeKey] = 'hsl(' + hue + ', 100%, 50%)';
});

// This one didn't fit easily in the earlier loop, so do it manually.
COLOR_RANGE['100'] = 'hsl(0, 100%, 50%)';

var sparklinePercentOptions = {
  type: 'line',
  height: 30,
  chartRangeMin: 0,
  chartRangeMax: 100,
  normalRangeMin: 0,
  normalRangeMax: 100,
  fillColor: '#444',
  lineColor: 'white',
  lineWidth: 1,
  spotColor: false,
  spotRadius: 2,
  minSpotColor: false,
  maxSpotColor: false,
  valueSpots: COLOR_RANGE,
  tooltipSuffix: '%',
  // tooltipClassname: 'sparkline-tooltip'
};

var addHandleToDict = function(handle, dict, key) {
  if (! dict[key]) {
    dict[key] = [];
  }

  dict[key].push(handle);
};

var removeHandlesFromDict = function(dict, key) {
  _.each(dict[key], function(handle) {
    handle.stop();
  });
  dict[key] = [];
};

var observeHandles = {};

Template.onlineKesmPanel.rendered = function() {
  var template = this;

  // Stay up-to-date when the sample changes.
  template.autorun(function() {
    var sampleIdDoc = propertyCollections[template.data.kesmName].findOne({ property: 'currentSampleID' });
    if (! sampleIdDoc || ! sampleIdDoc.value) {
      return;
    }
    var sampleId = sampleIdDoc.value;

    console.log('Subscribing to imageCounts for sample: ' + sampleId);
    Meteor.subscribe('image-count-for-sample', sampleId);
  });

  // Stay up-to-date when the knife changes.
  template.autorun(function() {
    var knifeIdDoc = propertyCollections[template.data.kesmName].findOne({ property: 'knifeId' });
    if (! knifeIdDoc || ! knifeIdDoc.value) {
      return;
    }
    var knifeId = knifeIdDoc.value;

    console.log('Subscribing to imageCounts for knife: ' + knifeId);
    Meteor.subscribe('image-count-for-knife', knifeId);
  });

  var sparklines = [{
    name: 'cpu',
    dataPoints: [],
    maxLength: 20,
    options: sparklinePercentOptions,
    accessor: function(data) { return data.machine.status.cpu; }
  }, {
    name: 'memory',
    dataPoints: [],
    maxLength: 20,
    options: sparklinePercentOptions,
    accessor: function(data) { return data.machine.status.memory; }
  }, {
    name: 'temp',
    dataPoints: [],
    maxLength: 20,
    options: {
      type: 'line',
      tooltipSuffix: '&deg;C',
      chartRangeMin: 0.0,
      // tooltipClassname: 'sparkline-tooltip'
    },
    accessor: function(data) {
      return roundIfNumber(data.properties['bath_temp']);
    }
  }, {
    name: 'flow',
    dataPoints: [],
    maxLength: 20,
    options: {
      type: 'line',
      tooltipSuffix: ' L/hr',
      chartRangeMin: 0.0,
      // tooltipClassname: 'sparkline-tooltip'
    },
    accessor: function(data) {
      return roundIfNumber(data.properties['bath_flow']);
    }
  }];

  var updateSparklines = function() {  
    _.each(sparklines, function(line) {
      var freshData = getAllDataForKesmName(template.data.kesmName);
      var value = line.accessor(freshData);
      pushDataToList(line.dataPoints, value, line.maxLength);
      template.$('.' + line.name + '-graph').sparkline(line.dataPoints, line.options);
    });
  };

  var machineHandle = Machines.find({
    _id: template.data.machine._id
  }).observe({
    changed: updateSparklines
  });

  var propertyHandle = propertyCollections[template.data.kesmName].find({
    property: { $in: ['bath_flow', 'bath_temp'] }
  }).observe({
    changed: updateSparklines
  });

  addHandleToDict(machineHandle, observeHandles, template.data.kesmName);
  addHandleToDict(propertyHandle, observeHandles, template.data.kesmName);
};

Template.onlineKesmPanel.destroyed = function() {
  var template = this;
  removeHandlesFromDict(observeHandles, template.data.kesmName);
};
