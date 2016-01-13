/* globals slicingOrChanging, getProperty, getPropValue */

Template.onOffSwitch.events({
  'click': function(event, template) {
    event.preventDefault();

    var hasDisabledAttr = _.has(this, 'disabled');
    if ((hasDisabledAttr && this.disabled) ||
        (! hasDisabledAttr && slicingOrChanging())) {
      console.log('Not registering click, disabled.');
      return;
    }

    var propName = template.data.propName;
    var property = getProperty(propName, false);
    if (! property.writable) {
      console.warn('Property not writable: '+propName);
      return;
    }

    var oldValue = property.value;
    var newValue = !oldValue;

    var requiresAck = template.data.requiresAck;
    Meteor.call('updateProperty', propName, newValue, { requiresAck: requiresAck }, Meteor.cb);
  }
});

Template.onOffSwitch.helpers({
  checkboxId: function() {
    return 'switch-'+this.propName;
  },
  checkedClass: function() {
    var checked = getPropValue(this.propName, false);
    return checked? 'checked' : '';
  },
  changingState: function() {
    var property = getProperty(this.propName, false);
    return property.value !== property.requestedValue;
  },
  disabled: function() {
    if (_.has(this, 'disabled')) {
      return this.disabled;
    }
    return slicingOrChanging() || ! getProperty(this.propName, false).writable;
  }
});
