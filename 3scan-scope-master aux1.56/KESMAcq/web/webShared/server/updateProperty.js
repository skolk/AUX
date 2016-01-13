/* globals UserIsActiveUser, UserExists, NonEmptyString,
SharedProperties
*/


Meteor.methods({
  updateProperty: function(propertyKey, value, options) {
    if (Meteor.isSystemManager()) {
      check(this.userId, UserExists);
    } else {
      check(this.userId, UserIsActiveUser);
    }
    check(propertyKey, NonEmptyString);
    check(value, Match.Or(Number, String, Boolean));
    check(options, { requiresAck: Boolean });    

    // Just grab a reference to Meteor's logger, which is created on startup.
    var logger = Meteor.logger;

    if (!options || !_.has(options, 'requiresAck')) {
      logger.raiseError('Please specify options.requiresAck to change property:' + propertyKey);
    }

    // Make sure the property exists, if not create it.
    var property = Properties.findOne({
      property: propertyKey
    });

    if (!property.writable) {
      logger.raiseError('Property `'+propertyKey+'` is not writable, aborting.');
    }

    // If ack is required, lock out the property from changes
    var fieldsToSet = {
      requestedValue: value
    };

    // If acknowledgement is required, lock out the property from changes
    if (options.requiresAck) {
      fieldsToSet["writable"] = false;
      fieldsToSet["acknowledged"] = false;
    } else {
      fieldsToSet["writable"] = true;
      fieldsToSet["acknowledged"] = true;

      // If ack is not required, the actual and requested value are synonamous
      fieldsToSet["value"] = value;
    }

    // Update the property if it is writable
    var countChanged = Properties.update({
      property: propertyKey,
      writable: true
    }, {
      $set: fieldsToSet
    });

    // Sanity check the return.  It should be 1
    if (countChanged !== 1) {
      var p = Properties.findOne({
        property: propertyKey
      });
      logger.raiseError("" + countChanged + ' records affected by change to ' + JSON.stringify(p));
    }
  }
});
