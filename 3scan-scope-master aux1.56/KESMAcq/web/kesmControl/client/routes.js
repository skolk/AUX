/* globals Router, setPageTitle */

var kesmName = Meteor.serverName();
var titlePrefix = 'KESM-' + kesmName + ' ';

Router.route('/', {
  template: 'kesmControls',
  waitOn: function() {
    return [
      Meteor.subscribe('current-properties'), // this includes the navbar-properties
      Meteor.subscribe('new-images-from-kesm', kesmName, 50)
    ];
  },
  onAfterAction: setPageTitle(titlePrefix + 'Control')
});

Router.route('/focus', {
  template: 'focusViewer',
  waitOn: function() {
    return [
      Meteor.subscribe('kesm-control-navbar-properties'),
      Meteor.subscribe('focus-image', kesmName)
    ];
  },
  onAfterAction: setPageTitle(titlePrefix + 'Focus Viewer')
});

Router.route('/debug', {
  template: 'debugPane',
  waitOn: function() {
    return [
      Meteor.subscribe('kesm-control-navbar-properties'),
      Meteor.subscribe('current-properties')
    ];
  },
  onAfterAction: setPageTitle(titlePrefix + 'properties')
});

Router.route('/stage', {
  template: 'stageData',
  waitOn: function() {
    return [
      Meteor.subscribe('kesm-control-navbar-properties'),
      Meteor.subscribe('stage-data-for-this-kesm', kesmName)
    ];
  },
  onAfterAction: setPageTitle(titlePrefix + 'Stage Data Viewer')
});
