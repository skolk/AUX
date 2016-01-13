/* globals DeviceNames */

Meteor.startup(function(){
  /////////////////////////////////////////////////////////////
  // Populate the DeviceNames collection on startup          //
  /////////////////////////////////////////////////////////////
  Meteor.info("Beginning device name computation.");
  var deviceNames = _.chain(Logs.find({}, { fields: { deviceName: 1 } }).fetch())
    .sortBy(function(message) { return message.deviceName; })
    .pluck('deviceName')
    .filter(function(deviceName) { return ! _.isEmpty(deviceName); })
    .unique()
  .value();
  Meteor.info('Finished retrieving log device names.');

  // Nuke the deviceNames collection, and repopulate it based on the above
  DeviceNames.remove({});
  _.each(deviceNames, function(deviceName) {
  	DeviceNames.insert({ deviceName: deviceName });
  });

  /////////////////////////////////////////////////////////
  // Provide a publication to the DeviceNames Collection //
  /////////////////////////////////////////////////////////
  Meteor.publish("all-log-device-names", function(){
  	return DeviceNames.find();
  });
});

