/* globals
getPropValue, getProperty, guiUtils
*/

Template.copyPositionButton.helpers({
  disabledOrNothing: disabledIfSlicingOrChanging
});

Template.copyPositionButton.events({
  'click': function(event, template) {
    event.preventDefault();

    var axis = template.data.axis;
    var AXIS = axis.toUpperCase();
    var minOrMax = template.data.minOrMax;

    var sliceProperty = 'slice_'+AXIS+'_'+minOrMax;
    var positionProperty = 'stage_'+axis+'_position';

    var currentPosition = getPropValue(positionProperty, 30);

    console.log('Copying current position: '+currentPosition+' into `'+sliceProperty+'`. . .');

    Meteor.call('updateProperty', sliceProperty, currentPosition, { requiresAck: false }, Meteor.cb);
  }
});

Template.sliceExtentsPerAxis.helpers({
  disabledOrNothing: function() {
    var scopeMode = getProperty('scopeMode', 'maintenance');
    var disabled = (scopeMode.value === 'slicing') || (scopeMode.value !== scopeMode.requestedValue);
    return disabled? 'disabled' : '';
  }
});

Template.sliceExtentsPerAxis.rendered = function() {
  var axis = this.data.axis;
  var AXIS = axis.toUpperCase();
  var minOrMax = this.data.minOrMax;
  var selector = '#'+$(this.find('input.'+minOrMax)).attr('id');
  var propName = 'slice_'+AXIS+'_'+minOrMax;

  guiUtils.makeMeteorReactiveTextBox(selector, propName, {
    requiresAck: false // TODO: should this be true?
  });
};

Template.scopeModeButton.helpers({
  classForMode: function() {
    var modeClass = {
      maintenance: 'info',
      slicing: 'warning',
      focus: 'success'
    }[this.mode];

    if (getPropValue('scopeMode', null) === this.mode) {
      return modeClass + ' active';
    } else {
      return 'default';
    }
  }
});

Template.scopeModeButton.events({
  'click button': function(event, template) {
    event.preventDefault();
    $(event.currentTarget).blur(); // remove the glowy border
    var mode = template.data.mode;
    Meteor.call('updateProperty', 'scopeMode', mode, { requiresAck: true }, Meteor.cb);
  },
});

Template.homedPerAxis.helpers({
  propName: function() {
    var axis = this.axis;
    return 'stage_'+axis+'_homed';
  }
});

Template.enabledPerAxis.helpers({
  propName: function() {
    var axis = this.axis;
    return 'stage_'+axis+'_enabled';
  }
});

Template.faultButton.events({
  'click': function(event, template) {
    event.preventDefault();
    var axis = template.data.axis;
    console.log('Clicked to re-enable axis: '+axis);
    var propName = 'stage_'+axis+'_fault';

    Meteor.call('updateProperty', propName, false, {
      requiresAck: true
    }, Meteor.cb);
  }
});

// used to store the handles from Tracker.autorun and stop
// them upon template destruction to prevent memory leaks.
var axisPositionComputations = {
  x: null,
  y: null,
  z: null
};

Template.axisPositionSlider.rendered = function() {
  var axis = this.data.axis;
  var AXIS = this.data.AXIS;
  var slider = $(this.find('.slider'));
  var lowerBar = slider.find('.lower.bar');
  var upperBar = slider.find('.upper.bar');
  var handle = slider.find('.handle');

  var readout = $('#axis-position-'+axis);

  if (axisPositionComputations[axis]) {
    axisPositionComputations[axis].stop();
  }
  axisPositionComputations[axis] = Tracker.autorun(function() {
    var lowerBound = getPropValue('slice_'+AXIS+'_min', 0);
    var lowerBoundPercent = 100 * lowerBound / 60;
    lowerBar.css('width', lowerBoundPercent+'%');

    var handlePosition = getPropValue('stage_'+axis+'_position', 30);
    var handlePositionPercent = 100 * handlePosition / 60;
    handle.css('left', handlePositionPercent+'%');

    var upperBound = getPropValue('slice_'+AXIS+'_max', 60);
    var upperBoundPercent = 100 * (60 - upperBound) / 60; // note that we subtract here
    upperBar.css('width', upperBoundPercent+'%');

    if (! readout.is(':focus')) {
      readout.val(handlePosition);
    }
  });
};

Template.axisPositionSlider.destroyed = function() {
  var axis = this.data.axis;
  axisPositionComputations[axis].stop();
};

var lastAxisReadings = {
  x: 0,
  y: 0,
  z: 0
};

Template.stagePositionReadout.helpers({
  disabledOrNothing: disabledIfSlicingOrChanging
});

Template.stagePositionReadout.events({
  'focus input': function(event, template) {
    var axis = template.data.axis;
    var input = $(event.currentTarget);
    lastAxisReadings[axis] = input.val();
  },
  'blur, keypress input': function(event, template) {
    var axis = template.data.axis;
    var input = $(event.currentTarget);
    if (event.which && event.which !== 13) {
      return; // we only care about keypresses if it's the enter key
    } else if (event.which === 13) {
      input.blur();
      return;
    }
    var inputValue = parseFloat(input.val());

    if (lastAxisReadings[axis] !== inputValue) {
      Meteor.call('updateProperty', 'stage_'+axis+'_position', inputValue, {
        requiresAck: true
      }, Meteor.cb);
    }
  }
});
