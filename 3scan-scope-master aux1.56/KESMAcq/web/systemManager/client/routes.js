/* globals Router, setPageTitle */

Router.route('/', {
  template: 'dashboard',
  waitOn: function() {
    return [
      Meteor.subscribe('multi-kesm-properties'),
      Meteor.subscribe('shared-properties')
    ];
  },
  onBeforeAction: function() {
    Session.set('numLogs', 6);
    Session.set('logSeverity', 'INFO');
    Session.set('moduleSearch', '');
    this.next();
  },
  onAfterAction: setPageTitle('KESM Dashboard')
});

Router.route('/processes', {
  template: 'processes',
  waitOn: function() {
    return [
      Meteor.subscribe('allowed-processes')
    ];
  },
  onAfterAction: setPageTitle('KESM Processes')
});

Router.route('/logs', {
  template: 'logViewer',
  waitOn: function() {
    return [
      Meteor.subscribe('all-log-device-names'),
      Meteor.subscribe('shared-properties')
    ];
  },
  onBeforeAction: function() {
    // In case we're coming from the dashboard, make sure this is populated correctly.
    if (Session.get('numLogs') < 100) {
      Session.set('numLogs', 100);
    }
    this.next();
  },
  onAfterAction: setPageTitle('KESM Log Viewer')
});

Router.route('/slices/sample/:sampleId/z/:z', {
  name: 'slice-viewer.image',
  template: 'sliceViewer',
  waitOn: function() {
    var options = {
      sampleId: this.params.sampleId,
      // We've gotta parse a float here because route params are
      // always strings.
      z: parseFloat(this.params.z)
    };
    return [
      Meteor.subscribe('tiled-images-in-face', options),
      Meteor.subscribe('image-in-next-face', options),
      Meteor.subscribe('image-in-previous-face', options),
      Meteor.subscribe('image-at-lowest-z', options),
      Meteor.subscribe('image-at-highest-z', options)
    ];
  },
  data: function() {
    var routeQuery = this.params.query;
    var lat = parseFloat(routeQuery.lat);
    if (_.isNaN(lat)) {
      lat = 0;
    }
    var lng = parseFloat(routeQuery.lng);
    if (_.isNaN(lng)) {
      lng = 0;
    }
    var zoom = parseInt(routeQuery.zoom, 10);
    if (_.isNaN(zoom)) {
      zoom = 0;
    }

    var sampleId = this.params.sampleId;
    var z = parseFloat(this.params.z);

    return {
      sampleId: sampleId,
      z: z,
      lat: lat,
      lng: lng,
      zoom: zoom
    };
  },
  onAfterAction: setPageTitle('KESM Slice Viewer')
});

Router.route('/slices/sample/:sampleId', {
  name: 'slice-viewer.sample',
  action: function() {
    var sampleId = this.params.sampleId;
    this.redirect('slice-viewer.highest', { sampleId: sampleId });
  } 
});

Router.route('/slices/sample/:sampleId/no-images', {
  name: 'slice-viewer.no-images',
  template: 'sliceViewer',
  waitOn: function() {
    var sampleId = this.params.sampleId;
    return [
      Meteor.subscribe('latest-tiled-images-for-sample', sampleId, 1)
    ];
  },
  data: function() {
    return {
      sampleId: this.params.sampleId,
      imagesInFace: Images.find().count()
    };
  }
});

Router.route('/slices', {
  waitOn: function() {
    return [
      Meteor.subscribe('latest-tiled-image')
    ];
  },
  action: function() {
    var lastImage = Images.findOne();
    this.redirect('slice-viewer.sample', { sampleId: lastImage.properties.currentSampleID });
  }
});
