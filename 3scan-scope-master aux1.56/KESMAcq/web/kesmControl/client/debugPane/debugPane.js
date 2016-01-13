Template.debugPane.helpers({
  properties: function() {
    return Properties.find({}, { sort: [['property', 'asc']] });
  },
  typed: function(value) {
    return _.isNull(value)? "NULL" :
           (value === false)? "false" :
           (_.isString(value))? '"' + value + '"' :
           (_.isArray(value))? '[' + value + ']' :
           value;
  }, 
  highlight: function() {
    var pendingRequest = (!this.writable || !this.acknowledged);
    if (pendingRequest) {
      return 'pending-request';
    }
    // EJSON.equals allows us to compare arrays too
    var changing = ! EJSON.equals(this.value, this.requestedValue);
    if (changing) {
      return 'changing';
    }
    if (_.isNull(this.value)) {
      return '';
    }

    return 'success';
  }
});