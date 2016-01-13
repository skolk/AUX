/* globals getProperty, firmlyInSlicingMode */

Session.setDefault('numFaces', 10);
Template.slicingButtons.events({
  'click #slice-several-button': function(event, template) {
    event.preventDefault();

    if (! firmlyInSlicingMode()) {
      return;
    }

    var numFaces = $(template.find('#slice-several-input')).val();
    console.log('Clicked to add '+numFaces+' faces to the slice queue.');
    // the client splits the actionQueue item into {cmd,args} with a space
    var queueAction = 'sliceSeveralFaces '+numFaces;
    Meteor.call('appendAction', queueAction, Meteor.cb);
    Session.set('numFaces', numFaces);
  }
});

Template.sliceActionButton.helpers({
  disabledOrNothing: function() {
    return firmlyInSlicingMode()? '' : 'disabled';
  }
});

Template.sliceActionButton.events({
  'click': function(event, template) {
    event.preventDefault();

    if (! firmlyInSlicingMode()) {
      return;
    }

    var queueAction = template.data.queueAction;
    console.log('Clicked to add to action queue: '+queueAction);
    Meteor.call('appendAction', queueAction, Meteor.cb);
  }
});
