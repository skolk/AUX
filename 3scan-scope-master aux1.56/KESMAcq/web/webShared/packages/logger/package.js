/* globals Package */

Package.describe({
  name: "3scan:logger",
  summary: "Database-Backed Meteor Logging",
  version: "0.0.1"
});

Npm.depends({ 'cli-color': '0.2.3' });

Package.onUse(function(api) {
  api.versionsFrom('METEOR@1.0');

  api.use('underscore', ['client', 'server']);
  api.use('meteor-platform', ['client', 'server']);
  api.use('3scan:validators', ['client', 'server']);
  api.use('3scan:on-off-switch', 'client');
  api.use('3scan:zmq', 'server');

  api.addFiles('logger.js', ['client', 'server']);
  api.export(['DeviceNames', 'Logs', 'Logger', 'LOG_LEVELS', 'LOG_COLORS'], ["client", "server"]);

  api.addFiles('logViewer.html', 'client');
  api.addFiles('logViewer.js', 'client');
  api.addFiles('logViewer.css', 'client');
  api.addFiles('logStartup.js', ['client', 'server']);
  api.addFiles('bindAndPublish.js', 'server');
});
