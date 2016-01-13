/* globals
UserExists, SampleDefaults, Logger, getEmailAddress,
NonEmptyString, DocExistsIn, AllProperties, getPropValue, SharedProperties, UserIsActiveUser
*/

var logger = new Logger({
  module: 'properties'
});

// Publish the full current properties by default ( < 50 objects)
Meteor.publish("current-properties", function() {
  return Properties.find();
});

var setActiveUser = function(userId) {
  var emailAddress = getEmailAddress(userId);
  Properties.update({ property: 'activeUser' }, { $set: {
    value: emailAddress,
    requestedValue: emailAddress
  }});

  logger.info("Set activeUser to: " + emailAddress);
};

Meteor.methods({
  takeControl: function() {
    check(this.userId, UserExists);
    setActiveUser(this.userId);
  },

  markAllAsWritable: function() {
    check(this.userId, UserExists);
    return Properties.update({}, { $set: { writable: true, acknowledged:true } }, {multi: true});
  }
});

// takes a JS object representing a shared property, pulls key data from it into the KESM-specific
// property collection, and returns the number of documents affected.
// Only update the requestedValue and value keys from the shared object.
// Don't overwrite other property values, such as writable or acknowledged.
var pullPropertyFromShared = function(sharedProp) {
  var propertyChanges = _.pick(sharedProp, 'value', 'requestedValue');
  return Properties.update({ property: sharedProp.property }, { $set: propertyChanges });
};

Meteor.startup(function() {

  SharedProperties.find().forEach(pullPropertyFromShared);

  // Each kesmControl server is responsible for updating its
  // properties collection from the shared properties.
  SharedProperties.find().observe({
    changed: function(newDoc, oldDoc) {
      pullPropertyFromShared(newDoc);
    }
  });
});


var createProperty = function(propertyKey, value) {
  // this.unblock();
  var numExisting = Properties.find({
    property: propertyKey
  }).count();

  if (numExisting === 0) {
    Properties.insert({
      property: propertyKey,
      value: value,
      writable: true,
      acknowledged: true,
      requestedValue: value
    });

    logger.warn("Created property '" + propertyKey + "', value: " + value + ". DB scrubbed?");
  }
};

// Initialize the properties
// MRG TODO: divorce this into more human freindly file somewhere
var cleanProperties = function() {
  _.each(AllProperties, function(propName) {
    // For each property name, check if it exists.  If it doesn't,
    // then create a property and set its value to null.
    createProperty(propName, null);
  });

  if (! _.isNull(getPropValue('currentSampleID'))) {
    return;
  }

  var sample = Samples.findOne();
  if (! sample) {
    return;
  }

  Properties.update({ property: 'currentSampleID' }, { $set: {
    value: sample._id,
    requestedValue: sample._id,
    acknowledged: true,
    writable: true
  }});
};

Meteor.startup(function() {
  cleanProperties();
});
