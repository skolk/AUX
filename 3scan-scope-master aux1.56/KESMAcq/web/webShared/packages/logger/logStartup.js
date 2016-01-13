/* globals UserExists */

Meteor.startup(function() {
  Meteor.createLogger();
  if (Meteor.isServer) {
    Meteor.warn('Server started.');
  }
});

// MRG NOTE: I am not sure these are ever used.  
Meteor.methods({
  log: function(text) {
    check(this.userId, UserExists);
    Meteor.log(text, { module: 'method' });
  },
  info: function(text) {
    check(this.userId, UserExists);
    Meteor.info(text, { module: 'method' });
  },
  warn: function(text) {
    check(this.userId, UserExists);
    Meteor.warn(text, { module: 'method' });
  },
  error: function(text) {
    check(this.userId, UserExists);
    Meteor.error(text, { module: 'method' });
  },
  detail: function(text) {
    check(this.userId, UserExists);
    Meteor.detail(text, { module: 'method' });
  }
});

Meteor.createLogger = function(options) {
  var serverName = Meteor.isClient? 'client' : ('server-' + Meteor.serverName());
  var moduleName = 'Meteor-' + serverName;
  Meteor.logger = new Logger(_.extend({
    module: moduleName
  }, options));

  _.each(['log', 'detail', 'verbose', 'debug', 'info', 'warn', 'error'], function(command) {
    Meteor[command] = function(/* arguments */) {
      var args = _.toArray(arguments);
      Meteor.logger[command].apply(Meteor.logger, args);
    };
  });
};