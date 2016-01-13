/* globals setupLeaflet:true, offsetTileLayer, L */

setupLeaflet = function(options) {
  // Initialize the leaflet map

  options = _.extend({
    fullscreenControl: true,
    imageCursor: Images.find(),
    elementId: 'leaflet-container',
    template: null, // This must be specified in the options
    lat: 0,
    lng: 0,
    zoom: 0
  }, options);

  // MRG TODO: remove global after testing.
  var map = L.map(options.elementId, {
    crs: L.CRS.Simple,
    fullscreenControl: options.fullscreenControl
  });

  // expose this map globally to enable console manipulation.
  L.currentMap = map;

  // A hash keying tile offset to the leaflet layer
  var offsetToLayer = {};

  // This is necessary to start the rendering.
  map.setView(L.latLng(options.lat, options.lng), options.zoom);

  var onViewChange = function() {
    var center = map.getCenter();
    Session.set('map-lat', center.lat);
    Session.set('map-lng', center.lng);
    Session.set('map-zoom', map.getZoom());
  };

  map.on('load', onViewChange);
  map.on('zoomend', onViewChange);
  map.on('moveend', onViewChange);

  // Autorun function to update tile layers to most recent slice url's
  options.template.autorun(function() {
    // We only display tiled images, but we need to know the offsets of
    // all slices to display them, so don't filter this query by tag.
    var allRecentImages = options.imageCursor.fetch();

    // Compute the unique offsets within that group. . .
    var currentOffsets = _.uniq(_.pluck(allRecentImages, "offset"));

    // . . . and display them in reverse (MRG TODO render direction wrt slice direction?)
    currentOffsets.sort();
    currentOffsets.reverse();

    // Go through all of the valid offsets and either make layers for the image, or set the url appropriately.
    _.each(currentOffsets, function(currentOffset) {
      // Get the most recent tiled image for this offset
      var imageForThisOffset = Images.findOne({
        tags: { $in: ['tiled'] },
        offset: currentOffset
      }, {
        sort: [
          ['time', 'desc']
        ]
      });

      // The image might not be ready yet, in which case move on to the next offset.
      if (! imageForThisOffset) {
        return;
      }

      // Compute the URL and coordinate offset of this tile layer
      var dx = Math.ceil(imageForThisOffset.offset * 256);
      var dy = 0;
      var baseUrl = Meteor.settings.public.baseURI;
      var imageUrl = 'http://tile{s}.' + baseUrl + '/' + imageForThisOffset._id + '/{z}/{x}_{y}.jpg';

      var layer;
      // Check to see if the offset keys to an existing layer
      if (currentOffset in offsetToLayer) {
        // Get the layer of interest
        layer = offsetToLayer[currentOffset];

        // Check that this is actully a URL change as we don't want to rerender everything when other metadata changes
        if (imageUrl === layer._url) return;

        // Set url of the already existing layer to the new slice images
        layer.setUrl(imageUrl);
      } else {
        // Create the layer for this offset keying
        layer = new offsetTileLayer(imageUrl, {
          minZoom: 0,
          maxZoom: 4,
          attribution: '3Scan',
          subdomains: '1234',
          noWrap: true,
          continuousWorld: true,
          offset: new L.point(-dx, -dy), // totes need to check the signs
          opacity: 0.75
        });

        // Zoom the map to view this offset
        // This is only called during layer creates, so the UI won't be nauseating
        // map.setView(new L.LatLng(-dx, -dy), 0);

        // Add it to the map, and the list of offsetsToLayers
        map.addLayer(layer);
        offsetToLayer[imageForThisOffset.offset] = layer;
      }
    });

    // Clean up layers who no longer appear
    _.each(_.keys(offsetToLayer), function(thisOffset) {
      // We computed the current offsets in a view set, so now we can
      // cull out layers no longer belonging to this offset
      if (!(thisOffset in currentOffsets)) {
        var deadLayer = offsetToLayer[thisOffset];
        // Remove the layer from the map, and nuke it from our layer list
        map.removeLayer(deadLayer);
        delete offsetToLayer[thisOffset];
        console.log("Layer Removed!");
      }
    });
  }); // End Autorun update block
}; // End Leaflet template rendered
