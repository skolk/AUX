var LINES_PER_CHUNK = 128;

// A class that writes the data in dataDoc to response,
// which is an http response object.  It writes the data in
// chunks to make sure it doesn't block the event loop.
var StageCSVWriter = function(dataDoc, response) {
  this.data = dataDoc.data;
  this.res = response;
  this.rowsWritten = 0;
  // We could use any key to calculate this; they're all the same length.
  this.numRows = this.data.PSOStatus_X.length;

  // Sort the keys so they're consistent across slices.
  this.keys = _.sortBy(_.keys(this.data));
};

StageCSVWriter.prototype.writeRow = function() {
  var self = this;
  var rowIndex = self.rowsWritten;
  var rowArray = _.map(self.keys, function(key) {
    return self.data[key][rowIndex];
  });

  self.res.write(rowArray.join(',') + '\n');
  self.rowsWritten ++;
};

StageCSVWriter.prototype.writeChunk = function() {
  var linesInChunk = Math.min(LINES_PER_CHUNK, this.numRows - this.rowsWritten);
  _.times(linesInChunk, this.writeRow, this);
};

StageCSVWriter.prototype.hasWrittenAllRows = function() {
  return this.numRows === this.rowsWritten;
};

StageCSVWriter.prototype.writeResponseSync = function() {
  var self = this;

  // Write the headers
  self.res.writeHead(200, {
    'Content-Type': 'text/plain'
  });

  // The first row of the CSV file is the key names.
  self.res.write(self.keys.join(',') + '\n');

  // Create a yielding version of writeChunk
  var wrappedWriteChunk = Meteor.wrapAsync(function(cb) {
    self.writeChunk();
    Meteor.defer(function() {
      cb(null, null);
    });
  });

  // Keep writing chunks until we've consumed all the data.
  while (! self.hasWrittenAllRows()) {
    wrappedWriteChunk();
  }

  // Finish the response
  self.res.end();
};

Router.route('/stageData/:imageId.csv', function() {
  // TAB TODO: do we need a security check on this?
  var dataDoc = StageData.findOne({ imageId: this.params.imageId });

  if (! dataDoc) {
    this.response.statusCode = 404;
    this.response.end('Could not find stage data with imageId: "' + this.params.imageId + '"\n');
    return;
  }

  var csvWriter = new StageCSVWriter(dataDoc, this.response);

  csvWriter.writeResponseSync();

}, { where: 'server' });
