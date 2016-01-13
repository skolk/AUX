/* globals StageData, NonEmptyString */

StageData._ensureIndex({ imageId: 1, startTime: 1 });

Meteor.publish('stage-data-for-this-kesm', function(selectedKesmName) {
	check(selectedKesmName, NonEmptyString);
	return StageData.find({ kesmName: selectedKesmName }, {
		sort: { startTime: -1 },
		limit: 1
	});
});
