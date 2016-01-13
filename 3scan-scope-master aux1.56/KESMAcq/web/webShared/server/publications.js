/* globals SharedProperties, UserExists, KesmNames */

Meteor.publish('navbar-collections', function() {
  return [
    Machines.find(),
    Processes.find(),
    KesmNames.find(),
    Samples.find()
  ];
});

// Publish properties necessary to fill in the navbar.
Meteor.publish('kesm-control-navbar-properties', function() {
  return Properties.find({
    property: { $in: ['slice_queue', 'waitingImageCount', 'activeUser'] }
  });
});

// Make the current user's email field available to the client.
Meteor.publish(null, function() {
  if (! this.userId) {
    return;
  }
  return Meteor.users.find(this.userId, {
    fields: { 'services.google.email': 1 }
  });
});

Meteor.publish('shared-properties', function() {
  return SharedProperties.find();
});

Meteor.publish("all-kesm-names", function() {
  return KesmNames.find();
});
