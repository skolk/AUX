Meteor.startup(function() {
  Logger.bindAndPublish(Meteor.settings.paths.globals.zmqPorts.log);
});
