/* globals AllowedProcesses, Machines, Processes */

Template.processList.helpers({
  allowedProcesses: function() {
    var r = _.pluck(AllowedProcesses.find().fetch(), "className"); 
    console.log(r);
    return r;
  }
});

// MRG NOTE: Commented out because. . . does nothing?
// Template.processDescriptorDraggable.events({
// });

Template.processDescriptorDraggable.rendered = function() {
  $(this.firstNode).draggable({
    revert: true,
    revertDuration: 0
  });
};

Template.machineList.helpers({
  machines: function() {
    return Machines.find({hostname: { $not: 'kesm' } }, {
      sort: [['hostname', 'asc']]
    });
  }
});

Template.machineProcesses.helpers({
  processes: function() {
    var machine = this;
    return Processes.find({ machineId: machine._id }, {
      sort: [['className', 'asc']]
    });
  }
});

Template.runningProcess.events({
  'click .remove-process': function(event, template) {
    event.preventDefault();

    var procId = template.data._id;

    console.log('Clicked to remove '+procId);

    Meteor.call('removeProcess', procId, Meteor.cb);
  },
  'click .restart-process': function(event, template) {
    event.preventDefault();

    var procId = template.data._id;

    console.log('Clicked to restart '+procId);

    Meteor.call('restartProcess', procId, Meteor.cb);
  },
  'click .test-process': function(event, template) {
    event.preventDefault();

    var procId = template.data._id;

    console.log('Clicked to test '+procId);

    Meteor.call('testProcess', procId, Meteor.cb);
  }
});

Template.machine.helpers({
  classForPercentage: function(percentage) {
    if (percentage <= 50)  {
      return 'text-success';
    } else if (percentage <= 75) {
      return 'text-warning';
    } else {
      return 'text-error';
    }
  },
  classForBranch: function(branch) {
    if (branch === 'master') {
      return 'text-success';
    } else {
      return 'text-warning';
    }
  }
});

Template.machine.events({
  'click .restart-machine': function(event, template) {
    event.preventDefault();

    var machineId = template.data._id;

    Meteor.call('restartAndUpdateMachine', machineId, Meteor.cb);
  },
  'click .remove-machine': function(event, template) {
    event.preventDefault();

    var machineId = template.data._id;

    Meteor.call('removeMachine', machineId, Meteor.cb);
  }
});

Template.machine.rendered = function() {
  var self = this;

  var machine = self.data;

  $(self.firstNode).droppable({
    activeClass: 'in-drag',
    hoverClass: 'touched',
    drop: function(event, ui) {

      var draggedNode = ui.draggable;

      var className = draggedNode.text().trim();

      Meteor.call('startProcessOnMachine', className, machine._id, Meteor.cb);
    }
  });
};
