/* globals UserExists, ActionQueue, NonEmptyString, UserIsActiveUser */

Meteor.methods({
  clearQueue: function() {
    check(this.userId, UserIsActiveUser);
    ActionQueue.remove();
  },
  appendAction: function(actionName) {
    check(this.userId, UserIsActiveUser);
    check(actionName, NonEmptyString);
    ActionQueue.insert({ action: actionName, time: +new Date() });
  }
});
