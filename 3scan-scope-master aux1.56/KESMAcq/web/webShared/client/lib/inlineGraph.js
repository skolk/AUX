// Tracker.isolate = function (f) {
//   if (! Tracker.active)
//     return f();
//   var resultDep = new Tracker.Dependency;
//   var origResult;
//   Tracker.autorun(function (c) {
//     var result = f();
//     if (c.firstRun)
//       origResult = result;
//     else if (!EJSON.equals(result, origResult))
//       resultDep.changed();
//   });
//   resultDep.depend();

//   return origResult;
// };

// var pushDataToList = function(dataList, dataToPush, maxLength) {
//   dataList.push(dataToPush);

//   if (dataList.length > maxLength) {
//     dataList.shift();
//   };
// };

// var makeList = function(func, maxLength) {
// 	var list = [];
// 	var listDep = new Tracker.Dependency();

// 	// TAB TODO: memory leak?  Somehow figure out how to stop the autorun.
// 	Tracker.autorun(function() {
// 		var newValue = Tracker.isolate(boundFunc);
// 		list.push(newValue);
// 		if (list.length > maxLength) {
// 			list.shift();
// 		}

// 		listDep.changed();
// 	});

// 	return function() {
// 		listDep.depend();
// 		return list;
// 	};
// };

// Template.registerHelper('makeList', makeList);

// Template.dummy.helpers({
// 	someValue: function() {
// 		var dataContext = this;

// 		return makeList(function() {
// 			return Machines.findOne(dataContext.machineId).status.cpu;
// 		}, 20);
// 	}
// });

// Template.registerHelper('inlineGraph', function() {
//   return Template.inlineGraph;
// });

// Template.inlineGraph.rendered = function() {
//   var template = this;
//   var options = _.extend({
//     value: 0,
//     spotColor: false,
//     lineWidth: 2
//   }, template.data);



//   template.$('.sparkline').sparkline(options.value, _.omit(options, 'value'));
// };
