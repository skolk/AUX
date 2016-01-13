Meteor.startup(function() {
  var numCleanedSamples = 0;
  Samples.find().forEach(function(sample) {
    if (_.isArray(sample.properties)) {
      var propertyDictionary = {};
      _.each(sample.properties, function(prop) {
        propertyDictionary[prop.property] = prop.value;
      });

      Samples.update(sample._id, { $set: { properties: propertyDictionary } });
      numCleanedSamples++;
    }
  });
  if (numCleanedSamples > 0) {
    Meteor.warn('Updated storage format for ' + numCleanedSamples + ' samples', { module: 'samples' });
  }
});