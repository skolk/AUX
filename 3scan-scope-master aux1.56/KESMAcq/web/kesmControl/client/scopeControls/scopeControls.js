/* globals
SampleProperties,
SampleSwitcher,
setupLeaflet,
guiUtils,
getPropValue,
delCurrentSample:true,
archiveCurrentSample:true,
setRake:true
*/

Template.thingsToMonitor.helpers({
  kesmStatus: function() {
    var kesmName = Meteor.settings.public.serverName;
    var machine = Machines.findOne({ kesmName: kesmName });
    if (! machine) {
      return false;
    }

    return !! Processes.findOne({
      className: { $in: ['KESM', 'KESMMain']},
      'status.isRunning': true,
      machineId: machine._id
    });
  }
});

Template.scopeLeafletViewer.rendered = function() {
  var template = this;
  
  setupLeaflet({
    template: template,
    elementId: 'leaflet-container'
  });
};

////////////////////
// Slice Settings //
////////////////////

var idForNumericInput = function(propName) {
  return 'number-input-' + propName;
};

Template.numberPropertyDisplay.helpers({
  inputId: function() {
    return idForNumericInput(this.propName);
  },
});

Template.numberPropertyDisplay.rendered = function() {
  var propName = this.data.propName;
  var inputSelector = '#' + idForNumericInput(propName);
  var requiresAck = this.data.requiresAck;

  guiUtils.makeMeteorReactiveTextBox(inputSelector, propName, {
    requiresAck: requiresAck
  });
};

Template.lastImageCopyable.rendered = function() {
  var template = this;

  template.autorun(function() {
    var lastImage = Images.findOne({
      tags: { $in: ['sliced'] }
    }, {
      sort: [['time', 'desc']]
    });

    var idString;
    if (lastImage) {
      idString = lastImage._id;
    } else {
      idString = 'None';
    }
    template.$('#last-image-uuid').val(idString);
  });
};

Template.lastImageCopyable.events({
  'click, click #last-image-uuid': function(event, template) {
    event.preventDefault();
    template.$('#last-image-uuid').select();
  }
});

//////////////////////
// Sample Wrangling //
//////////////////////

Template.kesmControls.rendered = function() {
  var template = this;

  SampleSwitcher.initFromDB();

  // Listen for changes to the Session variable caused by the user
  // selecting a different sample in the sampleSwitcher.
  template.autorun(SampleSwitcher.syncSampleSwitchToDB);
};

//////////////////////////////////////////////
// Functions only accessable via js-console //
//////////////////////////////////////////////

delCurrentSample = function() {
  Samples.remove({
    _id: SampleSwitcher.getSampleId()
  });
  var newSampleId = Samples.findOne()._id;
  SampleSwitcher.setSampleId(newSampleId);
};

archiveCurrentSample = function() {
  Samples.update(SampleSwitcher.getSampleId(), { $set: { archived: true } });
};

setRake = function(rakeAngle) {
  Meteor.call("updateProperty", "slice_rakeDelta", rakeAngle, { requiresAck: true }, Meteor.cb);
};