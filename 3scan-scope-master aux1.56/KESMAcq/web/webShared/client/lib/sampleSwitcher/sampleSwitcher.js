/* globals
getPropValue, getProperty, guiUtils, setupLeaflet, imageMeta, SampleProperties,
slicingOrChanging, disabledIfSlicingOrChanging, SampleDefaults, ReactiveVar,
setRake:true, delCurrentSample:true, archiveCurrentSample:true,
SampleSwitcher:true
*/

// constructor function
SampleSwitcher = {
  sampleId: new Package['reactive-var'].ReactiveVar(),
  
  getSampleId: function() {
    return this.sampleId.get();
  },

  setSampleId: function(sampleId) {
    this.sampleId.set(sampleId);
  },

  getRelatedProperties: function() {
    var ret = {};
    Properties.find({
      property: { $in: SampleProperties }
    }).forEach(function(doc) {
      ret[doc.property] = doc.value;
    });
    return ret;
  },

  createSample: function(sampleName, useDefaults) {
    var self = this;
    // Save the current before doing this
    self.savePropertiesIntoSample(self.getSampleId());

    var propsToSave;
    if (useDefaults) {
      propsToSave = EJSON.clone(SampleDefaults);
    } else {
      propsToSave = SampleSwitcher.getRelatedProperties();
    }

    // Insert the new one in the sample collection
    Samples.insert({
      name: sampleName,
      properties: propsToSave
    }, function(error, sampleID) {
      console.log('new sample id: '+sampleID);
      self.loadSampleIntoProperties(sampleID);
    });
  },

  loadSampleIntoProperties: function(sampleId) {
    var sampleToLoad = Samples.findOne(sampleId);

    // console.log('Loading sample "' + sampleToLoad.name + '" into properties.');
    // Load in each property from the sample document
    _.each(sampleToLoad.properties, function(value, propertyName) {
      // console.log(propertyName + " --> " + value);
      Meteor.call("updateProperty", propertyName, value, {
        requiresAck: false
      }, Meteor.cb);
    });

    // Set the 'currentSampleID' property
    Meteor.call("updateProperty", "currentSampleID", sampleId, {
      requiresAck: false
    }, Meteor.cb);
  },

  savePropertiesIntoSample: function(sampleId) {
    // Go through the current properties
    var propsToSave = this.getRelatedProperties();

    // console.log('Saving properties into sample named: ' + Samples.findOne(sampleId).name);
    // _.each(propsToSave, function(value, propertyName) {
    //   console.log(propertyName + " --> " + value);
    // });

    // Save the properties to it
    Samples.update(sampleId, {$set: {properties: propsToSave} });
  },

  initFromDB: function() {
    var self = this;

    var sampleId = getPropValue('currentSampleID');
    if (! sampleId) {
      return;
    }

    self.setSampleId(sampleId);
  },

  syncSampleSwitchToDB: function() {
    var self = this;

    // Get the new sampleId from the sampleSwitcher (this is reactive).
    var newSampleId = self.getSampleId();

    // We don't want to trigger a re-run when the property changes,
    // since this function is intended to be called in a reactive context.
    var previousSampleId = Tracker.nonreactive(function() {
      return getPropValue('currentSampleID');
    });

    if (newSampleId === previousSampleId) {
      return;
    }

    // Make sure we save the old properties before switching to the new one.
    // We do this non-reactively to prevent this function getting called again
    // whenever a property changes.
    // TAB TODO: it would be better to save the properties into the sample
    // whenever a relevant property changes, but this behavior has worked
    // well enough so far.
    Tracker.nonreactive(function() {    
      self.savePropertiesIntoSample(previousSampleId);
    });
    // Load the new sample's properties into the UI and the properties collection.
    self.loadSampleIntoProperties(newSampleId);
  }
};

// Enable the use of `this` inside SampleSwitcher methods.
_.bindAll.apply(_, [SampleSwitcher].concat(_.functions(SampleSwitcher)));

var getCurrentSampleName = function() {
  var qry = Samples.findOne( SampleSwitcher.getSampleId() );
  return qry ? qry.name : "No Sample Selected";
};

Template.sampleSwitcher.helpers({
  currentSampleName: getCurrentSampleName,
  samples: function() {
    return Samples.find({ archived: { $ne: true } });
  },
});

Session.set('showNewSampleDialog', false);

Template.sampleSwitcher.events({
  'click #new-sample-button': function(event, template) {
    // Pop up the dialog for a new sample
    event.preventDefault();

    if (slicingOrChanging()) {
      return;
    }

    // Make sure we always have the same default when the
    // dialog opens.
    Session.set('useDefaultSampleSettings', true);
    Session.set('showNewSampleDialog', true);
  }
});

Template.sampleDropdownItem.events({
  'click': function(event, template) {
    event.preventDefault();

    SampleSwitcher.setSampleId(template.data._id);
  }
});

Session.setDefault('useDefaultSampleSettings', true);
var useDefaults = function() {
  return Session.equals('useDefaultSampleSettings', true);
};
Template.newSampleDialog.helpers({
  defaultClass: function() {
    return useDefaults() ? 'btn-primary active' : '';
  },
  cloneClass: function() {
    return useDefaults() ? '' : 'btn-primary active';
  }
});

Template.newSampleDialog.events({
  'click #default-settings-button': function(event, template) {
    event.preventDefault();
    Session.set('useDefaultSampleSettings', true);
  },
  'click #clone-settings-button': function(event, template) {
    event.preventDefault();
    Session.set('useDefaultSampleSettings', false);
  },
  'click #create-sample-button': function(event, template) {
    event.preventDefault();

    // Grab the new name from the input
    var newName = $("#new-sample-name-input").val();

    // Clear it
    $("#new-sample-name-input").val("");

    // Create the sample.
    SampleSwitcher.createSample(newName, Session.get('useDefaultSampleSettings'));

    // We might not need the defer here but it's a good practice.
    Meteor.defer(function() {
      Session.set('showNewSampleDialog', false);
    });
  },
  'click #abort-new-sample-button': function(event, template) {
    event.preventDefault();

    // We might not need the defer here but it's a good practice.
    Meteor.defer(function() {
      Session.set('showNewSampleDialog', false);
    });
  }
});
