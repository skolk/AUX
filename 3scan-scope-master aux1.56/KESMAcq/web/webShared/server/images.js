/* globals
UserExists,
IdExistsIn,
NonEmptyString
*/

var logger = new Logger({module: 'images'});

// confusing mongo syntax:
// http://docs.mongodb.org/manual/reference/operator/query/in/#use-the-in-operator-to-match-values-in-an-array
Meteor.publish("new-images-from-kesm", function(kesmName, recCount) {
  check(kesmName, NonEmptyString);
  check(recCount, Match.Integer); // TAB TODO: make sure this isn't too big
  // This query returns the last N images that have been sliced.
  // The client is responsible for filtering which ones are tiled and ready to display.
  // This allows the client to display the UUID of the latest image,
  // even if that image hasn't yet been tiled.
  return Images.find({
    kesmName: kesmName,
    imageType: "slice",
    tags: { $in: ["sliced"] }
  }, {
    sort: [['time', 'desc']],
    limit: recCount
  });
});

Meteor.publish('latest-tiled-images-for-sample', function(sampleId, recCount) {
  check(sampleId, IdExistsIn(Samples));
  check(recCount, Match.Integer);

  return Images.findTiledInSample(sampleId, {}, {
    sort: [['time', 'desc']],
    limit: recCount
  });
});

// This is for all samples and all KESMs.
Meteor.publish('latest-tiled-image', function() {
  return Images.find({
    imageType: 'slice',
    tags: { $in: ['tiled'] }
  }, {
    sort: [['time', 'desc']],
    limit: 1
  });
});

Meteor.publish('tiled-images-in-face', function(options)   {
  check(options,{
    sampleId: IdExistsIn(Samples),
    z: Number
  });
  return Images.findInFace(options.sampleId, options.z, {
    tags: { $in: ['tiled'] }
  });
});

Meteor.publish("focus-image", function(kesmName) {
  check(kesmName, NonEmptyString);

  return Images.find({
    kesmName: kesmName,
    imageType: "focus",
    tags: {$in: ["saved"]}
  }, {
    sort: [['time', 'desc']],
    limit: 1
  });
});

Meteor.methods({
  "getGlobalSliceCount": function() {
    return Images.find().count();
  }
});

Meteor.startup(function() {
  // Start indexing for time.  Almost all queries us time in this db, so this is probably wise.
  // MRG TODO: Meteor API stability
  Images._ensureIndex({
    time: 1
  });

  // This index is sparse since there are old images that don't have a knifeId.
  Images._ensureIndex({
    'properties.knifeId': 1
  }, {
    sparse: true
  });
});
