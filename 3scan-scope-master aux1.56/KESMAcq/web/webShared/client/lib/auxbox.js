// This should mirror the enum in auxbox.ino

WATER_PATHS = [{
  displayName: 'Normal',
  pathNum: 0
}, {
  displayName: 'Capture',
  pathNum: 1
}, {
  displayName: 'Collect',
  pathNum: 2
}, {
  displayName: 'Flush',
  pathNum: 3
}, {
  displayName: 'Invalid / Switching',
  pathNum: 4,
  hidden: true // Don't show this in the dropdown.  This one isn't settable, just reportable.
}];

Template.registerHelper('currentPathName', function() {
  var defaultValue = 'Unknown';
  var pathNum = getPropValue('bath_path', defaultValue);
  console.log('pathNum: ' + pathNum);
  if (pathNum === defaultValue) {
    return defaultValue;
  }

  return _.findWhere(WATER_PATHS, { pathNum: pathNum }).displayName;
});
