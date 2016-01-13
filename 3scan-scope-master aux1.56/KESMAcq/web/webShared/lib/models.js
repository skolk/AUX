/* globals
requireLogin,
Properties:true,
SharedProperties:true,
PropertyOscilloscope:true,
Images:true,
Samples:true,
Machines:true,
Processes:true,
Process:true,
getPropValue:true,
getProperty:true,
SampleDefaults:true,
SampleProperties:true,
CameraProperties:true,
StageProperties:true,
KesmProperties:true,
AuxProperties:true,
GlobalProperties:true,
AllProperties:true,
SliceNumericProperties:true,
DebugProperties:true,
ActionQueue:true,
serverName:true,
getRunningKesmNames:true,
propertyCollections:true,
populatePropertyCollections:true,
getNumSampleSlices:true,
AllowedProcesses:true,
KesmNames:true,
StageData:true
*/

Meteor.serverName = function() {
  return Meteor.settings.public.serverName;
};

Meteor.isSystemManager = function () {
  return Meteor.settings.public.serverName === "admin";
};

// Collections for process/machine management
Processes = new Meteor.LoggedInCollection('processes');
Machines = new Meteor.LoggedInCollection('machines');
AllowedProcesses = new Meteor.LoggedInCollection('allowed-processes');

// Collections for individual kesm control
KesmNames = new Meteor.LoggedInCollection('kesm-names');
SharedProperties = new Meteor.LoggedInCollection('properties_shared');
Images = new Meteor.LoggedInCollection('imageMetadata');
Samples = new Meteor.LoggedInCollection('samples');
StageData = new Meteor.LoggedInCollection('stageData');

propertyCollections = {};
if (Meteor.isSystemManager()) {
  Properties = SharedProperties;

  populatePropertyCollections = function() {
    KesmNames.find().forEach(function(doc) {
      var kesmName = doc.kesmName;
      propertyCollections[kesmName] = new Meteor.LoggedInCollection('properties_' + kesmName);
    });
  };

  // On the server, we populate the propertyCollections once we've updated the KesmNames.
  // Don't do it here.
  if (Meteor.isClient) {
    Tracker.autorun(function(computation) {
      if (KesmNames.find().count() === 0) {
        return;
      }
      populatePropertyCollections();
      // Only run this once.
      computation.stop();
    });
  }

} else {
  // There is a Properties and ActionQueue collection for each KESM.
  // Let's only connect to the collections for our currently configured KESM.
  var kesmName = Meteor.serverName();
  ActionQueue = new Meteor.LoggedInCollection('actionQueue_' + kesmName);
  Properties = new Meteor.LoggedInCollection("properties_" + kesmName);
  PropertyOscilloscope = new Meteor.LoggedInCollection('oscilloscope_' + kesmName);
}


// Get the value of an arbitrary property,
// with a default value if the collection is out of sync etc.
getPropValue = function(propName, defaultValue) {
  var qry = Properties.findOne({ property: propName });
  return (qry && !_.isNull(qry.value)) ? qry.value : defaultValue;
};

getProperty = function(propName, defaultValue) {
  var property = Properties.findOne({ property: propName });
  return (property && !_.isNull(property.value)) ? property : { value: defaultValue };
};

SampleDefaults = {
  slice_X_min: 20.0,
  slice_X_max: 40.0,
  slice_Y_min: 20.0,
  slice_Y_max: 40.0,
  slice_Z_min: 0.0,
  slice_Z_max: 5.0,
  slice_speed: 10.0,
  slice_speedOther: 15.0,
  slice_thickness: 1.0,
  slice_width: 2.0,
  slice_rakeDelta: 0.0,
  slice_rakeTarget: 0.0
};

// the list of properties stored in a sample
SampleProperties = _.keys(SampleDefaults);

CameraProperties = [
  'camera_magnification',
  'camera_pixelSize',
  'camera_model',
  'camera_serial',
  'camera_lineRate',
  'camera_xSize',
  'camera_ySize',
  'camera_triggerState',
  'camera_signals',
  'camera_temp',
  'camera_lineFeedback'
];

StageProperties = [
  'stage_id',
  'stage_quadDiv',
  'stage_x_action',
  'stage_y_action',
  'stage_z_action',
  'stage_x_current',
  'stage_y_current',
  'stage_z_current',
  'stage_x_enabled',
  'stage_y_enabled',
  'stage_z_enabled',
  'stage_x_fault',
  'stage_y_fault',
  'stage_z_fault',
  'stage_x_homed',
  'stage_y_homed',
  'stage_z_homed',
  'stage_x_position',
  'stage_y_position',
  'stage_z_position'
];

AuxProperties = [
  'bath_temp',
  'bath_flow',
  'bath_path',
  'focus_steps'
];

KesmProperties = [
  'slice_queue',
  'currentSampleID',
  'scopeMode',
  'activeUser'
];

// These properties are shared among all property collections.
GlobalProperties = [
  'imageBufferCount',
  'imageBufferSize',
  'waitingImageCount',
  'storeDebugLogs'
];

AllProperties = _.flatten([
  SampleProperties,
  CameraProperties,
  StageProperties,
  AuxProperties,
  KesmProperties,
  GlobalProperties
]);

SliceNumericProperties = [{
  propName: 'slice_rakeTarget',
  text: 'Clearance Target',
  units: 'deg',
  requiresAck: false
}, {
  propName: 'slice_speed',
  text: 'Speed of Slicing',
  units: 'mm/s',
  requiresAck: false
}, {
  propName: 'slice_speedOther',
  text: 'Speed of Other Motions',
  units: 'mm/s',
  requiresAck: false
}, {
  propName: 'slice_width',
  text: 'Slice Width',
  units: 'mm',
  requiresAck: false
}, {
  propName: 'slice_thickness',
  text: 'Slice Thickness',
  units: '&micro;m', // HTML has a micro symbol
  requiresAck: false
}];

// These properties should only be shown on the debug screen,
// not presented to every user.
DebugProperties = [{
  propName: 'slice_rakeDelta',
  text: 'Clearance Angle',
  units: 'deg',
  requiresAck: false
}];

if (Meteor.isClient) {
  Template.registerHelper('SliceNumericProperties', function() {
    return SliceNumericProperties;
  });

  Template.registerHelper('DebugProperties', function() {
    return DebugProperties;
  });

  Template.registerHelper('getPropValue', getPropValue);
  Template.registerHelper('getProperty', getProperty);
}
