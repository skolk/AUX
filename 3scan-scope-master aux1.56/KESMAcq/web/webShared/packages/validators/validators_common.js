/* globals
DocExistsIn:true,
IdExistsIn:true,
NonEmptyString:true,
GreaterThan:true,
UserExists:true,
UserHasUsername:true,
getEmailAddress:true
*/

var requireLogin = function(collection) {
  collection.deny({
    insert: function(userId) { return ! Match.test(userId, UserExists); },
    update: function(userId) { return ! Match.test(userId, UserExists); },
    remove: function(userId) { return ! Match.test(userId, UserExists); }
  });

  collection.allow({
    insert: function() { return true; },
    update: function() { return true; },
    remove: function() { return true; }
  });
};

Meteor.LoggedInCollection = function(/* arguments */) {
  var self = this;
  var args = _.toArray(arguments);

  Meteor.Collection.apply(self, args);
  requireLogin(self);
};

Meteor.LoggedInCollection.prototype = new Meteor.Collection(null);
Meteor.LoggedInCollection.prototype.constructor = Meteor.Collection;

// Just like Match.test, except that if the match throws a
// Match.Error object, then catch it and return false.
// This is useful for creating Match combinators.
Match.testQuietly = function(value, pattern) {
  var testPassed;
  try {
    return Match.test(value, pattern);
  } catch (e) {
    if (e instanceof Match.Error) {
      return false;
    } else {
      throw e;
    }
  }
};

// This validator constructor takes a single pattern as an argument.
// The validator will
Match.Not = function(pattern) {
  return Match.Where(function(value) {
    return ! Match.testQuietly(value, pattern);
  });
};

// This validator constructor takes one or more Match patterns as arguments.
// The validator will check the supplied patterns lazily from left to right.
// If any of the patterns fail, then the checking stops.  If the failing
// pattern returned false, then this validator will return false.
// If the failing pattern threw a Match.Error, then this validator will re-throw it.
Match.And = function(/* arguments */) {
  var patterns = _.toArray(arguments);

  return Match.Where(function(value) {
    return _.every(patterns, function(pattern) {
      return Match.test(value, pattern);
    });
  });
};

// This validator constructor takes one or more Match patterns as arguments.
// The validator will check the supplied patterns lazily from left to right.
// If any of the patterns returns true, then the evaluation stops and this validator
// returns true.  Any Match.Error's thrown by any of the patterns get caught and
// are not re-thrown.  If all of the patterns fail, then this validator returns false.
Match.Or = function(/* arguments */) {
  var patterns = _.toArray(arguments);

  return Match.Where(function(value) {
    return _.any(patterns, function(pattern) {
      return Match.testQuietly(value, pattern);
    });
  });
};

// This validator constructor takes a Meteor collection as an argument,
// and returns a validator that will check whether a query matches any documents
// in that collection. This works with _id, as well as arbitrary queries.
DocExistsIn = function(collection) {
  return Match.Where(function(query) {
    var gotOne = !! collection.findOne(query);
    return gotOne;
  });
};

IdExistsIn = function(collection) {
  return Match.And(NonEmptyString, DocExistsIn(collection));
};

NonEmptyString = Match.Where(function(x) {
  check(x, String);
  return x.length > 0;
});

GreaterThan = function(limit) {
  return Match.Where(function(x) {
    check(x, Number);
    return x > limit;
  });
};

UserExists = IdExistsIn(Meteor.users);

UserHasUsername = function(username) {
  return Match.Where(function(userId) {
    check(userId, UserExists);
    return Meteor.users.findOne(userId).username === username;
  });
};

// Pass in either a user object or a userId
getEmailAddress = function(user) {
  if (typeof user === 'string') {
    user = Meteor.users.findOne(user);
  }
  return (user.services && user.services.google)? user.services.google.email : user.emails[0].address;
};
