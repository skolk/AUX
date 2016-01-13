Package.describe({
  name: '3scan:validators',
  summary: "Some useful validation functions using Meteor's Match library",
  version: '0.0.1'
});

Package.onUse(function(api) {
  api.use('underscore', ['server', 'client']);
  api.use('meteor', ['server', 'client']);
  api.use('accounts-base', ['server', 'client']);
  api.use('check', ['server', 'client']);

  api.addFiles("validators_common.js", ["server", "client"]);

  api.export('NonEmptyString', ['server', 'client']);
  api.export('DocExistsIn', ['server', 'client']);
  api.export('IdExistsIn', ['server', 'client']);
  api.export('GreaterThan', ['server', 'client']);
  api.export('UserExists', ['server', 'client']);
  api.export('UserHasUsername', ['server', 'client']);
  api.export('getEmailAddress', ['server', 'client']);

  api.addFiles("validators_server.js", "server");

  api.export('ProcessTypeIsAllowed', 'server');
  api.export('UserIsActiveUser', 'server');
});
