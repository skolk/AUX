/* globals PropertyOscilloscope */

// Given a record, time-stamp it, and mirror it into a new collection
var mirrorRecordIntoCollection = function(record, collection) {
  var newRec = _.extend(record, {
    time: +new Date()
  });
  delete newRec._id;
  collection.insert(newRec);
};

///////////////////////////
// Property Oscilloscope //
///////////////////////////

// Localized O-Scope styled journal
Meteor.publish("scopeVariable", function(propNameToScope, timeBackMS, kesmName) {
  // MRG TODO: Move the oscope collection into here?
  // MRG TODO: Semantics on localCollections and returning multicursors?

  // run a query for the data point of interest
  var propSelector = {
    property: propNameToScope
  };
  
  kesmName = (typeof kesmName !== 'undefined')? kesmName : null;

  var propCollection = (Meteor.serverName() !== 'systemManager')? 
    Properties : propertyCollections[kesmName];

  var qry = propCollection.find(propSelector);

  // Install an observe that update the PropertyOscilloscope
  var observeHandle = qry.observe({
    changed: function(oDoc, nDoc) {
      // Mirror new records in
      mirrorRecordIntoCollection(nDoc, PropertyOscilloscope);

      // cut stuff older than the buffer timeout from the collection
      PropertyOscilloscope.remove({
        time: {
          $lt: (+new Date()) - timeBackMS
        }
      });
    }
  });

  // when subscription is stopped, cleanup observes, and nuke the PropertyOscilloscope
  this.onStop(function() {
    observeHandle.stop(); // Kill the above observe
    PropertyOscilloscope.remove(propSelector); // then remove the dataz
    Meteor.log("scope Subscription for " + propNameToScope + " stopped.");
  });

  // Return a the collection that will now accrue timestamped properties
  return PropertyOscilloscope.find();
});

