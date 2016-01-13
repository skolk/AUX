var useDummyImages = (Meteor.settings.public.configName === 'local');

var getImagePath;

if (useDummyImages) {

  // Create a reactive color.
  var imageColor = 'ffffff';
  var imageColorDep = new Tracker.Dependency();

  var nextDummyColor = function() {
    var potentialDigits = '0123456789abcdef';
    var imageDigits = _.map(_.range(6), function() {
      var randomIndex = _.random(potentialDigits.length - 1);
      return potentialDigits[randomIndex];      
    });
    
    imageColor = imageDigits.join('');

    imageColorDep.changed();
  };

  getImagePath = function() {
    imageColorDep.depend();
    return "http://dummyimage.com/4096x96/0015ff/" + imageColor + ".png";
  };

} else {

  var pathForImageId = function(imageId) {
    var imageFilename = imageId + '.png';
    var imageURL = 'http://data.' + Meteor.settings.public.baseURI; 
    return  imageURL + "/" + imageFilename;
  };

  getImagePath = function() {
    var image = Images.findOne();
    if (! image) {
      console.log('No image found in subscription.');
      return 'http://dummyimage.com/4096x96/0015ff/ffffff.png';
    }

    return pathForImageId(image._id);
  };
}

Template.focusViewer.rendered = function() {
  var template = this;
  template.autorun(function() {
    var imagePath = getImagePath();
    var $invisibleImageHolder = template.$('#invisible-image-holder');

    $invisibleImageHolder.off('load');
    $invisibleImageHolder.attr('src', imagePath);

    $invisibleImageHolder.on('load', function() {
      Session.set('image-to-display', imagePath);
    });
  });
};

Template.focusViewer.helpers({
  imagePath: function() {
    return Session.get('image-to-display');
  }
});

if (useDummyImages) {
  Template.focusViewer.created = function() {
    this.colorTimerHandle = Meteor.setInterval(nextDummyColor, 1000);
  };

  Template.focusViewer.destroyed = function() {
    Meteor.clearInterval(this.colorTimerHandle);
  };
}