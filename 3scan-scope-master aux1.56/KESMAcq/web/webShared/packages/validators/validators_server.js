/* globals
UserExists,
ProcessTypeIsAllowed:true,
getEmailAddress,
UserIsActiveUser:true
*/

var allowedProcessTypes = [
  "FailWhale",
  "ImageAnalyzer",
  "ImageCompressor",
  "ImageTiler",
  "IOThread",
  "KESMControlServer",
  "KESMMain",
  "Receptionist",
  "S3Uploader",
  "SuccessKid",
  "SystemWebServer"
];


ProcessTypeIsAllowed = Match.Where(function(processType) {
  return _.contains(allowedProcessTypes, processType);
});

UserIsActiveUser = Match.And(UserExists, Match.Where(function(userId) {
  var userEmail = getEmailAddress(userId);
  var activeUserEmail = Properties.findOne({ property: 'activeUser' }).value;
  return userEmail === activeUserEmail;
}));
