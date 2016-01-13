/* globals
getPropValue, Router, getProperty, guiUtils, setupLeaflet, imageMeta, SampleProperties,
slicingOrChanging, disabledIfSlicingOrChanging,
setRake:true, delCurrentSample:true, toTitleCase:true, getEmailAddress
*/

Template.topNavBar.helpers({
  pageTitle: function() {
    return Session.get('pageTitle');
  }
});

var SYSTEM_ROUTES = [{
  template: 'logViewer',
  displayName: 'Logs',
  path: '/logs'
}, {
  template: 'processes',
  displayName: 'Processes',
  path: '/processes'
}, {
  template: 'sliceViewer',
  displayName: 'Slice Viewer',
  path: '/slices'
}];

var KESM_ROUTES = [{
  template: 'focusViewer',
  displayName: 'Focus',
  path: '/focus'
}, {
  template: 'stageData',
  displayName: 'Stage Data',
  path: '/stage'
}, {
  template: 'debugPane',
  displayName: 'Debug',
  path: '/debug'
}];

var TEXT_COLOR_FOR_KESM_NAME = {
  red: 'red',
  green: 'green',
  blue: 'blue',
  purple: 'purple',
  lilac: '#ccb2ff',
  lavender: '#A790BA',
  admin: ''
};
UI.registerHelper('colorForKESM', function() {
  var kesmName = Meteor.serverName();
  return TEXT_COLOR_FOR_KESM_NAME[kesmName];
});

var isPathCurrentRoute = function(path) {
  var currentRoutePath = Router.current().location.get().path;
  return path === currentRoutePath;
};

var activeIfCurrentRoute = function(path) {
  return isPathCurrentRoute(path)? 'active' : '';
};

UI.registerHelper('activeIfCurrentRoute', activeIfCurrentRoute);

Template.topNavBar.helpers({
  dashboardURI: function() {
    return 'http://' + Meteor.settings.public.serverURIs.admin;
  },

  activeIfKesmControl: function() {
    if (Meteor.isSystemManager()) {
      return '';
    }

    return activeIfCurrentRoute('/');
  },

  kesmRoutes: function() {
    return KESM_ROUTES;
  },

  systemRoutes: function() {
    return SYSTEM_ROUTES;
  }
});

Template.topNavBar.events({
  'click #take-control-button': function(event, template) {
    Meteor.call('takeControl', Meteor.cb);
  }
});

Template.activeUserDisplay.helpers({
  userIsActiveUser: function() {
    var user = Meteor.user();
    if (! user) {
      return false;
    }

    return getEmailAddress(user) === getPropValue('activeUser');
  }
});

Template.navRoute.helpers({
  uri: function() {
    var serverName = Meteor.serverName();
    var serverURI = Meteor.settings.public.serverURIs[serverName];
    return "http://" + serverURI + this.path;
  }
});