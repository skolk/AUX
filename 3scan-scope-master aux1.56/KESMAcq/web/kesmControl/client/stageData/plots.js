/* sampleInterval in hz
Meteor.subscribe('stage-data-for-image', imageId);

On a kesm basis--drop-down will show all kesms and user will view most
recent slice taken from each

Drop-down: given a sample, to get images you must:
  -> search images DB and get list of image IDs keyed to that sample
  -> subscribe one-at-a-time to the

Available signals checklist...
  -> show min/max of each signal plus UNITS--permit only like units to be on same plot?
  -> drag-and-drop onto plots?

sampleInterval = StageData.findOne({"imageId": imageId}).sampleInterval

samplesPerSecond = sampleInterval/1000ms
*/

/* globals StageData, signals:true */

var sessionOpacities = {};
var VISIBLE = true;
var INVISIBLE = false;
var colorKeyInactiveOpacity = 0.2;
var psoStatusOpacity = 0.8;

/* Non-programmatically sort signals into two groups based on signal range;
cmd signals tend to have much larger ranges than error signals. I.e. this is
based on what "looks good" and is readable, so it can be changed at will.
PSOs will be displayed in background for all groups. */
var sortSignals = function(dataKeys) {
  var filteredKeys = _.without(dataKeys, 'PSOStatus_X');
  var errSignals = _.filter(filteredKeys, function(signalName) {
    return signalName.indexOf('Err') !== -1;
  });
  var cmdSignals = _.difference(filteredKeys, errSignals);
  return [
    errSignals.sort(),
    cmdSignals.sort()
  ];
};

// Do bit-masking to determine whether PSO is firing or not for each data point
// Then format like the other signals so that this doesn't have to be repeated for
// each signal group.
var getPsoFiringStatus = function(stageData, sampleRateHz) {
  // replace psoStatusWord with 0 if 9th bit is on (PSO off) or 1 if off (PSO firing)
  return {
    signalName: "PSOStatus_X",
    values: _.map(stageData["PSOStatus_X"], function(psoStatusWord, index) {
      var firingStatus = ((psoStatusWord & 512) !== 0)? 0 : 1;
      return { value: firingStatus, time: index * sampleRateHz };
    })
  };
};

var createPlot = function(stageData, signalList, sampleRateHz, psoFiringStatus, plotNum) {

  // Number plots to avoid confusion in signal IDs when toggling
  var thisPlot = "plot-" + plotNum;

  var margin = {top: 80, right: 180, bottom: 80, left: 80}, // margins
    outerWidth = 1200,
    outerHeight = outerWidth * (2/3),
    w = outerWidth - margin.left - margin.right,
    h = outerHeight - margin.top - margin.bottom;

  // This is mmPerCount * microns / mm
  var micronsPerCount = 1000.0 / 200000.0;

  // create Object for each signal in signalList for easy manipulation by d3
  signals = signalList.map(function(name) {
    // Don't scale the pso signal.
    var yFactor = (name === 'PSOStatus_X')? 1.0 : micronsPerCount;

    return {
      signalName: name,
      values: _.map(stageData[name], function(value, index) {
        return { value: yFactor * value, time: index * sampleRateHz };
      })
    };
  });

  // What opacity to display color keys vs. signals if inactive
  var inactiveOpacity = function(element) {
    return (element.nodeName === "path")? 0 : colorKeyInactiveOpacity;
  };

  // What opacity to display an active signal depending on whether or not it's the PSO status
  var activeOpacity = function(d, element) {
    return (signalIsPSOStatus(d) && (element.nodeName === "path")? psoStatusOpacity : 1);
  };

  // Function to set single element's opacity
  var setOpacity = function(element, opacityValue) {
    $(element).css("opacity", opacityValue);
  };

  // Draggable x-axis logic
  var downx = Math.NaN;
  var downscalex;

  // Mouse events associated with draggable axis
  var mouseup = function(d) {
    downx = Math.NaN;
  };

  var mousedown = function(d) {
    var p = d3.mouse(svg[0][0]);
    downx = x.invert(p[0]);
    downscalex = x;
  };

  var mousemove = function(d) {
    if (!isNaN(downx)) {
      var p = d3.mouse(svg[0][0]),
        rupx = p[0];
      if (rupx !== 0) {
        x.domain([
          downscalex.domain()[0],
          w * (downx - downscalex.domain()[0]) / rupx + downscalex.domain()[0]
        ]);
      }
      draw();
    }
  };

  // scale the data to fit plot axes
  var maxSignalLength = d3.max(signals, function(d) {
    return d.values.length;
  });

  // Ignore top/bottom 0.1% of signals when determining Y domain
  var datums = _.flatten(_.pluck(signals, 'values'));
  var values = _.pluck(datums, 'value');
  // Don't use the built-in sort, it does it lexically and doesn't handle scientific notation.
  var sortedValues = _.sortBy(values, function(value) { return parseFloat(value); });

  var bottomPercentileIndex = Math.ceil(sortedValues.length * 0.001) - 1;
  var topPercentileIndex = Math.floor(sortedValues.length * 0.999) - 1;

  var yDomain = {
    lower: sortedValues[bottomPercentileIndex],
    upper: sortedValues[topPercentileIndex]
  };

  var y = d3.scale.linear()
      .domain([yDomain.lower, yDomain.upper])
      .range([h, 0]);

  var x = d3.scale.linear()
      .domain([0, maxSignalLength * sampleRateHz])
      .range([0, w]);

  // Attach each signal's name in signalList to a color
  var color = d3.scale.category10();
  color.domain(signalList);

  // Add PSO status to signals
  if (psoFiringStatus) {
    signals.push(psoFiringStatus);
    signalList.push("PSOStatus_X");

    // Want PSO bars to be gray
    color.domain().push("PSOStatus_X");
    var psoColorIndex = color.domain().indexOf("PSOStatus_X");
    color.range().splice(psoColorIndex, 0, '#d9d9d9');

    // Reset color domain/range to include PSO label/color
    color.domain(color.domain());
    color.range(color.range());
  }

  // Create the graph element
  var svg = d3.select("#graph").append("div")
      .attr("class", "plot-" + plotNum)
    .append("svg")
      .attr("width", outerWidth)
      .attr("height", outerHeight)
      .on("mouseup", mouseup)
    .append("g")
      .attr("transform", "translate(" + margin.left + "," + margin.top + ")")
      .on("mousemove", mousemove);

  // Zoom behavior
  var zoom = d3.behavior.zoom()
      .on("zoom", draw);

  // Reset to original view if alt key is pressed during click on plot
  var revertZoom = function() {
    if (d3.event.altKey) {
      console.log("resetting zoom");
      zoom.translate([0,0]).scale(1);
      draw();
    }
  };

  zoom.x(x);
  zoom.y(y);

  // Create x-axis first, so the ticks show behind the plots
  var xAxis = d3.svg.axis()
      .scale(x)
      .tickSize(-h)
      .tickSubdivide(true);

  // Create var xAxisElement to "store" x axis as several things need to be appended to it
  var xAxisElement = svg.append("g")
      .attr("class", "x axis")
      .attr("transform", "translate(0," + h + ")");

  xAxisElement.append("text")
      .attr("x", w)
      .attr("y", 30)
      .style("text-anchor", "end")
      .text("Milliseconds");

  // Formula for scaling datapoints on lines
  var line = d3.svg.line()
      .x(function(d) { return x(d.time); })
      .y(function(d) { return y(d.value); });

  // Formula for creating PSO status bars
  var area = d3.svg.area()
      .interpolate("step-after")
      .x(function(d) { return x(d.time); })
      .y0(y(y.domain()[1])) // check what the domain min/max are, changes with zoom/pan
      .y1(function(d) { return (d.value * y(y.domain()[0])); });

  // Create a group for each signal in signals; on draw(), specify line/area within each group
  var signal = svg.selectAll(".signal")
      .data(signals)
    .enter().append("g")
      .attr("class", "signal");

  // Check if current signal is PSO Status
  var signalIsPSOStatus = function(d) {
    return (d.signalName === "PSOStatus_X");
  };

  // Each signal type has its own color. Use clip-path to limit signal lines to plot area only
  signal.append("path")
      .attr("class", function(d) { return signalIsPSOStatus(d)? "area" : "line"; })
      .style("stroke", function(d) { return signalIsPSOStatus(d)? "" : color(d.signalName); })
      .style("fill", function(d) { return signalIsPSOStatus(d)? color(d.signalName) : ""; })
      .attr("opacity", function(d) {
        var initialActiveOpacity = signalIsPSOStatus(d)? psoStatusOpacity : 1;
        return (sessionOpacities[d.signalName]? initialActiveOpacity : 0);
      })
      .attr("id", function(d) { return d.signalName + thisPlot; })
      .attr("clip-path", "url(#clip)");

  // Move PSO status bars to the very back
  svg.selectAll("g.signal").sort( function(a, b) {
    return (a.signalName === ("PSOStatus_X" + thisPlot))? -1 : 1;
  });

  // Create y-axis last so that axis labels show in front of plots/PSO status bars
  var yAxis = d3.svg.axis()
      .scale(y)
      .ticks(4)
      .orient("left");

  svg.append("g")
      .attr("class", "y axis")
      .attr("transform", "translate(-1,0)")
    .append("text")
      .attr("transform", "rotate(-90)")
      .attr("y", 6)
      .attr("dy", "0.71em")
      .style("text-anchor", "end")
      .html("Microns (&micro;m)");

  // This rect covers plot area; mouse events have zoom/pan functions within this element
  svg.append("rect")
      .attr("class", "pane")
      .attr("width", w)
      .attr("height", h)
      .call(zoom)
      .on("click", revertZoom);

  // Clip signal lines that extend outside the plot area
  svg.append("clipPath")
      .attr("id", "clip")
    .append("rect")
      .attr("x", 0)
      .attr("y", 0)
      .attr("width", w)
      .attr("height", h);

  // delineates a rectangle over the x-axis where dragging zooms the axis
  xAxisElement.append("rect")
      .attr("class", "pane")
      .attr("width", w)
      .attr("height", 20)
      .style("cursor", "ew-resize")
      .on("mousedown", mousedown);

  // This gets repeated if zoom/pan changes or signals are hidden/re-activated
  function draw() {
      svg.selectAll("path.area").attr("d", function(d) { return area(d.values); });
      svg.selectAll("path.line").attr("d", function(d) { return line(d.values); });
      svg.select("g.x.axis").call(xAxis);
      svg.select("g.y.axis").call(yAxis);
  }

  // Toggle visibility of lines by clicking color key in legend
  function toggleVisibility(d) {
    if (d3.event.altKey) {
      var signalSubsetOpacities = _.values(_.pick(sessionOpacities, signalList));

      // if all signals are visible, set hideAllSignals to TRUE
      var hideAllSignals = _.every(signalSubsetOpacities);

      _.each(signalList, function(signalName) {
        d3.selectAll("#" + signalName + thisPlot)
            .attr("opacity", function(d) {
              return hideAllSignals? inactiveOpacity(this) : activeOpacity(d, this);
            });
        sessionOpacities[signalName] = !hideAllSignals;
      });

    } else {

      d3.selectAll("#" + d.signalName + thisPlot)
          .attr("opacity", function(d) {
            return sessionOpacities[d.signalName]? inactiveOpacity(this) : activeOpacity(d, this);
          });
      sessionOpacities[d.signalName] = !sessionOpacities[d.signalName];
    }
  }

  // Create a legend
  var legendXPos = w + 20;
  var legendHeight = (signalList.length) * 20;
  var legendWidth = 100;
  var legendRectSize = 18;

  // Describe legend box, create a sub-group for each signal that will contain color key & label
  var legend = svg.append("g")
      .attr("class", "legend")
      .attr("transform", "translate(" + legendXPos + ", 0)")
      .attr("height", legendHeight)
      .attr("width", legendWidth)
      .selectAll("g")
      .data(signals)
    .enter().append("g")
      .attr("transform", function(d, i) { return "translate(0," + i * 20 + ")"; });

  // Color keys
  legend.append("rect")
      .attr("width", legendRectSize)
      .attr("height", legendRectSize)
      .attr("id", function(d) { return d.signalName + thisPlot; })
      .attr("opacity", function(d) {
        return sessionOpacities[d.signalName]? 1 : colorKeyInactiveOpacity;
      })
      .style("cursor", "pointer")
      .style("fill", function(d) { return color(d.signalName); })
      .on("click", toggleVisibility);

  // Signal labels
  legend.append("text")
      .attr("x", legendRectSize + 5)
      .attr("y", legendRectSize / 2)
      .attr("dy", ".35em")
      .text( function(d) { return d.signalName; });

  // Do initial drawing of axes and signal lines
  draw();
};

var getLastImageId = function() {
  var stageDataSample = StageData.findOne();
  return (stageDataSample? stageDataSample.imageId : "N/A");
};

Template.stageData.helpers({
  imageId: getLastImageId,

  stageDataExportURI: function() {
    var adminURI = Meteor.settings.public.serverURIs.admin;
    var imageId = getLastImageId();
    return 'http://' + adminURI + '/stageData/' + imageId + '.csv';
  },

  rawImageURI: function() {
    var adminURI = Meteor.settings.public.serverURIs.admin;
    var imageId = getLastImageId();
    return 'http://data.' + adminURI + '/' + imageId + '.png';
  },

  availableActions: function() {
    return ("Alt+click over plot to return to initial zoom/pan view. " +
      "Click legend color keys to toggle signal data visibility. " +
      "Alt+click color keys to toggle visibility of all signals in a plot.");
  }
});

// Function for updating signal line opacities
var setOpacities = function(signalNames, setValue) {
  _.each(signalNames, function(signal) {
    sessionOpacities[signal] = setValue;
  });
};

var plotAutorunHandle = null;
Template.stageDataPlot.rendered = function() {
  plotAutorunHandle = Tracker.autorun( function() {

    // If there's nothing there, then bail.
    if (! StageData.findOne()) {
      console.log('No stage data.');
      this.$('#graph').html('<h4>No stage data for this kesm.</h4>');
      return;
    }

    // Overwrite previous elements in #graph so that new plots overwrite old instead of appending to bottom
    this.$('#graph').html('');

    var stageDataDoc = StageData.findOne();

    var currentStageData = stageDataDoc.data;
    // the db stores "sampleRate", which is really sampleInterval in milliseconds.
    var sampleRateHz = 1000.0 / stageDataDoc.sampleRate;

    // Set all signals to VISIBLE unless user has hidden some already
    if (_.isEmpty(sessionOpacities)) {
      setOpacities(Object.keys(currentStageData), VISIBLE);
    }

    // All of the signals collected for this sample
    var listOfSignals = Object.keys(currentStageData);

    // Sort samples into groups; this should be based on signal ranges
    var sortedSignals = sortSignals(listOfSignals);

    // Assume no PSO status unless it is found in list of signals
    var psoFiringStatus = false;

    if (_.contains(listOfSignals, "PSOStatus_X")) {
      psoFiringStatus = getPsoFiringStatus(currentStageData, sampleRateHz);
    }

    _.each(sortedSignals, function(signalSubset, index) {
      createPlot(currentStageData, signalSubset, sampleRateHz, psoFiringStatus, index);
    });

  });
};

Template.stageDataPlot.destroyed = function() {
  plotAutorunHandle.stop();
};

