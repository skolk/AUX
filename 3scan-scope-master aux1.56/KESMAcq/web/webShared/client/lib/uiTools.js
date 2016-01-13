/* globals
getPropValue, getProperty, toTitleCase:true, firmlyInSlicingMode:true, axisIndex:true,
guiUtils:true, AxisList:true, slicingOrChanging:true, disabledIfSlicingOrChanging:true, UI,
getRoundedProp:true, getAllDataForKesmName:true, KesmNames,propertyCollections,
roundIfNumber:true
*/


// make things like Meteor.settings.public available in helpers
Template.registerHelper('Meteor', function() {
  return Meteor;
});

// make the Session available in helpers
Template.registerHelper('Session', function() {
  return Session;
});

Meteor.startup(function() {
  Template.registerHelper('allPossibleKesmNames', function() {
    return KesmNames.find().map(function(doc) { return doc.kesmName; });
  });
});

getAllDataForKesmName = function(kesmName) {
  var properties = {};
  if (propertyCollections && _.has(propertyCollections, kesmName)) {
    _.each(propertyCollections[kesmName].find().fetch(), function(doc) {
      properties[doc.property] = doc.value;
    });  
  }

  var sample = Samples.findOne(properties['currentSampleID']) || null;
  
  var machine = Machines.findOne({ kesmName: kesmName });
  var process;
  if (!! machine) {
    process = Processes.findOne({
      className: { $in: ['KESMMain', 'KESM'] },
      machineId: machine._id
    });
  } else {
    machine = null;
    process = null;
  }

  var uri = "http://" + Meteor.settings.public.serverURIs[kesmName];

  return {
    kesmName: kesmName,
    machine: machine,
    process: process,
    properties: properties,
    sample: sample,
    uri: uri
  };
};
Template.registerHelper('allDataForKesmName', getAllDataForKesmName); 

Template.registerHelper('odd', function(value) {
  return (value % 2 !== 0);
});

Template.registerHelper('classForDot', function(active) {
  return active? 'green' : 'red';
});

toTitleCase = function(str) {
  return str.replace(/\w\S*/g, function(txt) {
    return txt.charAt(0).toUpperCase() + txt.substr(1).toLowerCase();
  });
};

// Small Collection of utility functions to make the gui-widgits dance etc.

AxisList = [{
  axis: 'x',
  AXIS: 'X',
  index: 0
}, {
  axis: 'y',
  AXIS: 'Y',
  index: 1
}, {
  axis: 'z',
  AXIS: 'Z',
  index: 2
}];

Template.registerHelper('axes', function() {
  return AxisList;
});

axisIndex = function(axisLetter) {
  return _.findWhere(AxisList, { axis: axisLetter.toLowerCase() }).index;
};

var axisIsInFault = function(axis) {
  return getPropValue('stage_'+axis+'_fault', false);
};

Template.registerHelper('colorClassForAxis', function(axisLetter) {
  var colorForAxis = {
    x: 'error',
    y: 'success',
    z: 'info',
  };

  if (axisIsInFault(axisLetter)) {
    return 'fault';
  } else {
    return colorForAxis[axisLetter];
  }
});

Template.registerHelper('isInFault', axisIsInFault);

var scopeModes = [{
  mode: 'maintenance'
}, {
  mode: 'focus'
}, {
  mode: 'slicing'
}];

Template.registerHelper('scopeModes', function() {
  return scopeModes;
});

Template.registerHelper('scopeIsInMode', function(mode) {
  var scopeMode = getPropValue('scopeMode', 'maintenance');
  return scopeMode.value === mode;
});

Template.registerHelper('changingModes', function() {
  var scopeMode = getPropValue('scopeMode', 'maintenance');
  return scopeMode.value !== scopeMode.requestedValue;
});

firmlyInSlicingMode = function() {
  var scopeMode = getProperty('scopeMode', 'maintenance');
  return (scopeMode.value === 'slicing') && (scopeMode.value === scopeMode.requestedValue);
};

slicingOrChanging = function() {
  var scopeMode = getProperty('scopeMode', 'maintenance');
  return (scopeMode.value === 'slicing') || scopeMode.value !== scopeMode.requestedValue;
};
Template.registerHelper('slicingOrChanging', slicingOrChanging);

// Returns 'disabled' if the scope is in 'slicing' mode, or if it's changing modes.
// This is used to disable buttons and inputs.
disabledIfSlicingOrChanging = function() {
  return slicingOrChanging()? 'disabled' : '';
};
Template.registerHelper('disabledIfSlicingOrChanging', disabledIfSlicingOrChanging);

Template.registerHelper('disabledUnlessSlicing', function() {
  return firmlyInSlicingMode()? '' : 'disabled';
});

// The default number of digits to display for floating point numbers.
// If this is 0, then num.toFixed(0) should round to the nearest integer.
var NUM_DECIMALS = 1;

roundIfNumber = function(value, numDecimals) {
  if (_.isUndefined(numDecimals)) {
    numDecimals = NUM_DECIMALS;
  }
  return _.isNumber(value)? value.toFixed(numDecimals) : value;
};

getRoundedProp = function(propName, defaultValue, numDecimals) {
  var value = getPropValue(propName, defaultValue);
  // Don't try to round the default value, since it could already be a string.
  if (value === defaultValue) {
    return value;
  }

  return roundIfNumber(value, numDecimals);
};

Template.registerHelper('getRoundedProp', getRoundedProp);

// This is a bit of a hack to make it easier to use a template
// like a controller object.  Use it like:
// {{#with data a=true b=1}}
//   {{> controllerTemplate}}
// {{/with}}
Template.registerHelper('data', function(data) {
  return data.hash;
});

Meteor.cb = function(e,r) {
  if (e) console.error(e);
  if(r) {
    if (_.isArray(r) && console.table) {
      console.table(r);
    } else {
      console.log(r);
    }
  }
};

guiUtils = {};

guiUtils.makeMeteorReactiveTextBox = function(textInputQuery, meteorPropertyName, options) {
  options = options || {};
  var cleanseFunction = options.cleanseFunction || parseFloat;
  var updateFunction = options.updateFunction || 'updateProperty';

  var interacting = false;
  var propertySelector = {
    property: meteorPropertyName
  }; // Meteor Property selector

  // Meteor -> jQuery-ui
  var updateTextBoxFromMeteor = function() {
    // Query the relevent stage data source
    var tbQuery = Properties.findOne(propertySelector);

    // Do not update if user interaction is going on
    // Update the text box if the mongo property has changed
    if (interacting) {
      return;
    }

    if (tbQuery) {
      $(textInputQuery).val(tbQuery.value);
    }
  };

  // Call this first when the slider is initialized, and when changes happen
  Tracker.autorun(updateTextBoxFromMeteor);

  // jQuery-ui -> Meteor
  var pushTextChangeToMeteor = function() {
    var currentValue = $(textInputQuery).val();

    if (cleanseFunction) {
      currentValue = cleanseFunction(currentValue);
    }
    Meteor.call(updateFunction, meteorPropertyName, currentValue, options, Meteor.cb);

    // Also change it back to the parsed version
    $(textInputQuery).val(currentValue);
  };

  // Now we register change handlers via the various jQuery whatnot
  // Register doing an update on a enter key
  $(textInputQuery).bind('keypress', function(event) {
    var code = (event.keyCode ? event.keyCode : event.which);
    //Enter keycode
    if (code == 13) {
      // Force focus-out
      $(textInputQuery).blur();
    }
  });

  // Make a change commit if the field loses focus
  $(textInputQuery).focusout(function(event) {
    pushTextChangeToMeteor();
    interacting = false;
  });

  // Disable updating when user is editing values
  $(textInputQuery).focusin(function(event) {
    interacting = true;
  });
};

// Functions to init sliders on gui, also registers Meteor Tracker
guiUtils.makeMeteorPropSlider = function(searchId, meteorPropertyName, cleanFunc, updateMethodName) {
  // Flag for is the slider is being used
  var interacting = false;

  // Select and create the slider element
  // Also register the start and stip functions
  $(searchId).slider({
    range: "min",
    step: 0.000001,
    min: 0.0,
    max: 60.0,
    start: function(event, ui) {
      interacting = true;
    },
    stop: function(event, ui) {
      var sliderLocation = $(searchId).slider("value");
      // Update the metor when the slider is dropped somewhere new
      Meteor.call(updateMethodName, meteorPropertyName, cleanFunc(sliderLocation), "web");
      interacting = false;
    }
  });

  // Closured function to update the slider defined based on meteor values
  Tracker.autorun(function() {
    // Query the relevent stage data source
    var valueQuery = Properties.findOne({
      property: meteorPropertyName
    });
    if (valueQuery && !interacting) {
      // Update the fucking slider
      $(searchId).slider("value", valueQuery.value);
    }
  });

};

// Initialize the image-extents slider (diff b/c it has two sliders)
guiUtils.initImageExtentSlider = function(axisName) {
  var interacting = false;
  // name for the jQuery selector
  var sliderName = "#image" + axisName + "AreaSlider";

  // Meteor property names
  var propertyNameMin = "slice_" + axisName + "_min";
  var propertyNameMax = "slice_" + axisName + "_max";

  // Init the slider with default values . . .
  // The values will later be updated by autorun function below
  $(sliderName).slider({
    range: "min",
    step: 0.0001,
    min: 0.0,
    max: 60.0,
    values: [20, 40],
    start: function(event, ui) {
      interacting = true;
    },
    stop: function(event, ui) {
      var vals = $(sliderName).slider("values");

      // Update the associated meteor properties
      var minV = Math.min(vals[0], vals[1]);
      var maxV = Math.max(vals[0], vals[1]);

      // Create the properties.
      Meteor.call("createProperty", propertyNameMin, minV, "web");
      Meteor.call("createProperty", propertyNameMax, maxV, "web");

      // End the interaction flag
      interacting = false;
    }
  });

  // Closured function to update the slider defined above
  // Additionally Meteor dependancy registration etc.
  Tracker.autorun(function() {
    // Query the relevent stage data source
    var minQ = Properties.findOne({
      property: propertyNameMin
    });
    var maxQ = Properties.findOne({
      property: propertyNameMax
    });

    // Check for empty return is necessary, as collection might not be initialized before this is run
    if (minQ && maxQ) {
      // Update the slider
      $(sliderName).slider("values", [minQ.value, maxQ.value]);
    }
  });
};
