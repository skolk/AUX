/* globals SampleSwitcher, setupLeaflet */

Template.sliceViewer.rendered = function() {
  var template = this;
  var originalSampleId = template.data.sampleId;

  SampleSwitcher.setSampleId(originalSampleId);

  // If we switch samples, then redirect to the page
  // for the new sample.
  template.autorun(function(computation) {
    var newSampleId = SampleSwitcher.getSampleId();
    if (newSampleId === originalSampleId) {
      return;
    }

    computation.stop();
    Router.go('slice-viewer.sample', { sampleId: newSampleId });
  });

  // If we started out with no images, but then one comes in,
  // redirect from the no-images page to a page that will display
  // the images.
  // TAB TODO: This logic might be better put in a route controller.
  if (Images.find().count() === 0) {  
    template.autorun(function(computation) {
      if (Images.find().count() !== 0) {
        computation.stop();
        console.log('Got first image for sample!');
        Router.go('slice-viewer.sample', { sampleId: originalSampleId });
      }
    });
  }
};

Template.sliceViewerNav.helpers({
  imagesInSample: function() {
    return Images.findInFace(this.sampleId, this.z).count() > 0;
  }
});

Template.sliceViewerZSlider.helpers({
  attrs: function() {
    var min = Images.findOne({}, {
      sort: [['properties.slice_Z_min', 'asc']]
    }).properties.slice_Z_min;

    var max = Images.findOne({}, {
      sort: [['properties.slice_Z_min', 'desc']]
    }).properties.slice_Z_min;

    return {
      min: min,
      max: max,
      step: Images.Z_TOLERANCE_MM
    };
  }
});

Template.sliceViewerZSlider.rendered = function() {
  var template = this;
  var initialZ = template.data.z;
  template.$('input[type="range"]').val(initialZ);
};

Template.sliceViewerZSlider.events({
  'change input': function(event, template) {
    var newZ = template.$('input[type="range"]').val();
    var initialZ = template.data.z;
    if (Math.abs(newZ - initialZ) < Images.Z_TOLERANCE_MM) {
      console.log('Too close.');
      return;
    }
    console.log('Going to new z: ' + newZ);

    var sampleId = template.data.sampleId;
    Router.go('slice-viewer.nearest', {
      z: newZ,
      sampleId: sampleId
    }, {
      query: {
        lat: Session.get('map-lat'),
        lng: Session.get('map-lng'),
        zoom: Session.get('map-zoom')
      }
    });
  }
});

var SLICE_SWITCHER_BUTTONS = [{
  template: 'highestButton',
  route: 'slice-viewer.highest',
  checkFunc: function(data) { return true; }
}, {
  template: 'lowestButton',
  route: 'slice-viewer.lowest',
  checkFunc: function(data) { return true; }
}, {
  template: 'higherButton',
  route: 'slice-viewer.previous',
  checkFunc: function(data) {
    var zToCheck = data.z + Images.Z_TOLERANCE_MM;
    return Images.findAboveZ(data.sampleId, zToCheck).count() > 0;
  }
}, {
  template: 'lowerButton',
  route: 'slice-viewer.next',
  checkFunc: function(data) {
    var zToCheck = data.z - Images.Z_TOLERANCE_MM;
    return Images.findBelowZ(data.sampleId, zToCheck).count() > 0;
  }
}];

_.each(SLICE_SWITCHER_BUTTONS, function(button) {
  Template[button.template].events({
    'click button': function(event, template) {
      if (! button.checkFunc(template.data)) {
        return;
      }

      Router.go(button.route, {
        sampleId: template.data.sampleId,
        z: template.data.z
      }, {
        query: {
          lat: Session.get('map-lat'),
          lng: Session.get('map-lng'),
          zoom: Session.get('map-zoom')
        }
      });
    }
  });
});

Template.sliceViewerLeaflet.rendered = function() {
  var template = this;
  var z = template.data.z;
  var sampleId = template.data.sampleId;

  // Initialize the session variables first.
  Session.set('map-lat', template.data.lat);
  Session.set('map-lng', template.data.lng);
  Session.set('map-zoom', template.data.zoom);

  // Make sure to ignore images outside of the current face.
  setupLeaflet({
    template: template,
    elementId: 'slice-viewer-leaflet',
    imageCursor: Images.findInFace(sampleId, z),
    lat: template.data.lat,
    lng: template.data.lng,
    zoom: template.data.zoom
  });

  // Store the route name so we don't have to recompute
  // it every time the map view changes.
  var routeName = Router.current().options.route.getName();

  // When the map moves or zooms, update the URL.
  // Stay at the same route, just change the query.
  template.autorun(function() {
    var lat = Session.get('map-lat');
    var lng = Session.get('map-lng');
    var zoom = Session.get('map-zoom');

    Router.go(routeName, {
      sampleId: sampleId,
      z: z
    }, {
      query: {
        lat: lat,
        lng: lng,
        zoom: zoom
      }
    });
  });
};