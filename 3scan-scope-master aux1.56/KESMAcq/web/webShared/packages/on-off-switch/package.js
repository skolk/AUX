/* globals Package */

Package.describe({
  name: '3scan:on-off-switch',
  summary: "On-Off Switch with Quad-State Display",
  version: '0.0.1'
});

Package.onUse(function(api) {
  api.use('meteor-platform', 'client');

  api.addFiles('onOffSwitch.css', 'client');
  api.addFiles('onOffSwitch.html', 'client');
  api.addFiles('onOffSwitch.js', 'client');
});
