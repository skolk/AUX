/* globals
getPropValue:true,
getProperty:true,
propertyCollections,
populatePropertyCollections,
MongoInternals,
KesmNames,
IdExistsIn,
NonEmptyString
*/

////////////////////////////////////////////////////////////////
// Populate a collection with the names of all existing KESMs //
////////////////////////////////////////////////////////////////
var updateKesmNamesAndPropertyCollections = function(){
  // Get a direct handle to mongo
  var db = MongoInternals.defaultRemoteCollectionDriver().mongo.db;

  // This returns a list of {name: "name"} objects
  var nameDicts = Meteor.wrapAsync(db.collectionNames, db)();
  var prefix = 'meteor.properties_';
  var kesmNamesInDb = _.chain(nameDicts)
    .filter(function(dict) { return dict.name.indexOf(prefix) === 0; })
    .map(function(dict) { return dict.name.slice(prefix.length); })
    .without('shared')
    .unique()
  .value();

  _.each(kesmNamesInDb, function(kesmName) {
    var queryResult = KesmNames.findOne({kesmName: kesmName});
    if (! queryResult) {
      console.log("New Kesm Added:" + kesmName);
      KesmNames.insert({ kesmName: kesmName });
    }
    if (! _.has(propertyCollections, kesmName)) {
      propertyCollections[kesmName] = new Meteor.LoggedInCollection('properties_' + kesmName);
    }
  });
};

Meteor.startup(function(){
  // Figure out which KESMs are there before publishing all their properties.
  updateKesmNamesAndPropertyCollections();

  // Publish an array of cursors, one for each Properties collection.
  Meteor.publish('multi-kesm-properties', function() {
    return _.map(propertyCollections, function(collection) {
      return collection.find();
    });
  });
});

Meteor.publish('kesm-names', function() {
  return KesmNames.find();
});

var publishImageCountForQuery = function(publication, query, docId) {
  var count = 0;
  // Use the same client-side collection for all the counts.
  var collectionName = 'image-counts';
  var initializing = true;

  // Just get the _id field, to minimize the query time.
  var handle = Images.find(query, { fields: { _id: 1 } }).observeChanges({
    added: function(imageId) {
      count ++;
      if (! initializing) {
        publication.changed(collectionName, docId, { count: count });
      }
    },
    removed: function(imageId) {
      count --;
      publication.changed(collectionName, docId, { count: count });
    }
  });

  initializing = false;
  publication.added(collectionName, docId, { count: count });
  publication.ready();

  publication.onStop(function() {
    handle.stop();
  });
};

Meteor.publish('image-count-for-sample', function(sampleId) {
  check(sampleId, IdExistsIn(Samples));
  
  var query = {
    'tags': { $in: ['sliced'] },
    'properties.currentSampleID': sampleId
  };
  var docId = sampleId;

  publishImageCountForQuery(this, query, docId);
});

Meteor.publish('image-count-for-knife', function(knifeId) {
  check(knifeId, NonEmptyString);
  
  var query = {
    tags: { $in: ['sliced'] },
    'properties.knifeId': knifeId
  };
  var docId = knifeId;
  
  publishImageCountForQuery(this, query, docId);
});
