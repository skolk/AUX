Package.describe({
  name: "3scan:zmq",
  summary: "Node/Meteor bindings to ZMQ",
  version: "0.0.1"
});

Npm.depends({ zmq: "2.5.1" });

Package.onUse(function (api) {
  api.addFiles("zmq.js", "server");
  api.export("ZMQ", "server");
});
