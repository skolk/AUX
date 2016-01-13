/* globals Router, setPageTitle:true */

Router.plugin('loading', { loadingTemplate: 'loading' });

Router.configure({
  layoutTemplate: 'layout',
  waitOn: function() {
    return [
      Meteor.subscribe('navbar-collections')
    ];
  }
});

var serverString = ' [' + Meteor.settings.public.serverName + ']';

Session.setDefault('pageTitle', 'KESM loading ...');

// Note that this has to be a closure to be used in the `after` functions.
setPageTitle = function(title) {
  return function() {
    Session.set('pageTitle', title);
  };
};

Tracker.autorun(function() {
  document.title = Session.get('pageTitle');
});
