/* globals IdExistsIn, NonEmptyString */

Images.findTiledInSample = function(sampleId, query, options) {
  var querySelector = _.extend({
    imageType: 'slice',
    tags: { $in: ['tiled'] },
    'properties.currentSampleID': sampleId
  }, query);

  return Images.find(querySelector, options);
};

// We won't ever have slices thinner than 0.1 microns
Images.Z_TOLERANCE_MM = 0.0001;

// Return a cursor for all the images in a face, 
// specified by sampleId and the z for that face.
// Optionally include other query parameters in the 
// third argument.
Images.findInFace = function(sampleId, z, query, options) {
  var querySelector = _.extend({
    'properties.slice_Z_min': {
      $gt: z - Images.Z_TOLERANCE_MM,
      $lt: z + Images.Z_TOLERANCE_MM
    }
  }, query);

  return Images.findTiledInSample(sampleId, querySelector, options);
};

// The 'options' arg is for query modifiers, like limit.
Images.findAboveZ = function(sampleId, z, options) {
  return Images.findTiledInSample(sampleId, {
    'properties.slice_Z_min': { $gte: z }
  }, _.extend({
    sort: [['properties.slice_Z_min', 'asc']],    
  }, options));
};

// The 'options' arg is for query modifiers, like limit.
Images.findBelowZ = function(sampleId, z, options) {
  return Images.findTiledInSample(sampleId, {
    'properties.slice_Z_min': { $lte: z }
  }, _.extend({
    sort: [['properties.slice_Z_min', 'desc']]    
  }, options));
};

Images.findInNextFace = function(sampleId, z) {
  // Slices go down in z over time, so subsequent slices
  // will always have a z less than the current one.
  // Include the tolerance here to prevent retrieiving an
  // image from the same face due to floating point error.
  var maxZ = z - Images.Z_TOLERANCE_MM;

  // Find an image in the next face. We'll use this to construct
  // the query to find all the images in that face.
  return Images.findBelowZ(sampleId, maxZ, { limit: 1 });
};

Images.findInPreviousFace = function(sampleId, z) {
  var minZ = z + Images.Z_TOLERANCE_MM;

  return Images.findAboveZ(sampleId, minZ, { limit: 1 });
};

Images.findHighestZ = function(sampleId) {
  return Images.findTiledInSample(sampleId, {}, {
    sort: [['properties.slice_Z_min', 'desc']],
    limit: 1
  });
};

Images.findLowestZ = function(sampleId) {
  return Images.findTiledInSample(sampleId, {}, {
    sort: [['properties.slice_Z_min', 'asc']],
    limit: 1
  });
};

// Return a cursor containing the image closest to the 
// specified z.
Images.findNearZ = function(sampleId, z) {
  // Convenience functions. Each one has a limit of 1.
  var getLowerImageCursor = function() {
    return Images.findBelowZ(sampleId, z, { limit: 1 });
  };
  var getUpperImageCursor = function() {
    return Images.findAboveZ(sampleId, z, { limit: 1 });
  };

  var lowerImages = getLowerImageCursor().fetch();
  var upperImages = getUpperImageCursor().fetch();

  if (lowerImages.length === 0 && upperImages.length === 0) {
    // Ain't got nothin
    return [];
  
  } else if (lowerImages.length === 0) {
    // go with the higher one if that's all we've got
    return getUpperImageCursor();
  
  } else if (upperImages.length === 0) {
    // go with the lower one if that's all we got
    return getLowerImageCursor();
  
  } else {
    // Find the closer of the two images and use that.
    var zLower = lowerImages[0].properties.slice_Z_min;
    var diffLower = Math.abs(z - zLower);

    var zUpper = upperImages[0].properties.slice_Z_min;
    var diffUpper = Math.abs(z - zUpper);

    if (diffLower < diffUpper) {
      return getLowerImageCursor();
    } else {
      return getUpperImageCursor();
    }
  }
};

var SLICE_VIEWER_VIEWS = [{
  routeName: 'slice-viewer.nearest',
  path: '/slices/sample/:sampleId/z/:z/nearest',
  subscriptionName: 'image-at-nearest-z',
  findImageFunc: Images.findNearZ
}, {
  routeName: 'slice-viewer.next',
  path: '/slices/sample/:sampleId/z/:z/next',
  subscriptionName: 'image-in-next-face',
  findImageFunc: Images.findInNextFace
}, {
  routeName: 'slice-viewer.previous',
  path: '/slices/sample/:sampleId/z/:z/previous',
  subscriptionName: 'image-in-previous-face',
  findImageFunc: Images.findInPreviousFace
}, {
  routeName: 'slice-viewer.highest',
  path: '/slices/sample/:sampleId/highest',
  subscriptionName: 'image-at-highest-z',
  findImageFunc: Images.findHighestZ
}, {
  routeName: 'slice-viewer.lowest',
  path: '/slices/sample/:sampleId/lowest',
  subscriptionName: 'image-at-lowest-z',
  findImageFunc: Images.findLowestZ
}];

_.each(SLICE_VIEWER_VIEWS, function(view) {

  if (Meteor.isClient) {
    Router.route(view.path, {
      name: view.routeName,
      waitOn: function() {
        var sampleId = this.params.sampleId;
        var z = parseFloat(this.params.z);
        return Meteor.subscribe(view.subscriptionName, {
          sampleId: sampleId,
          z: z
        });
      },
      action: function() {
        var sampleId = this.params.sampleId;
        var z = parseFloat(this.params.z);
        
        var imageList = view.findImageFunc(sampleId, z).fetch();
        if (imageList.length === 0) {
          this.redirect('slice-viewer.no-images', { sampleId: sampleId });
          return;
        }

        var image = imageList[0];
        this.redirect('slice-viewer.image', {
          sampleId: image.properties.currentSampleID,
          z: image.properties.slice_Z_min
        }, {
          query: this.params.query
        });
      }
    });
  }

  if (Meteor.isServer) {
    Meteor.publish(view.subscriptionName, function(options) {
      check(options, {
        sampleId: IdExistsIn(Samples),
        z: Match.Optional(Number)
      });

      // This should work as long as the only potential options are sampleId
      // and z. If z isn't supplied, 
      return view.findImageFunc(options.sampleId, options.z);
    });
  }

});