Package.describe({
  name: "3scan:leaflet",
  summary: "Leaflet Map Tiling System + Some Personal Tweaks",
  version: '0.0.1'
});

Package.onUse(function (api) {
  api.use('jquery');
  api.use('underscore');
  api.use('session');

  // Leaflet base
  // https://github.com/Leaflet/Leaflet
  api.addFiles(["leaflet-src.js"], "client");

  api.export(['L'], ["client", "server"]);
  api.addFiles(["leaflet.css", "leaflet.ie.css"], 'client');

  // Leaflet fullscreen
  // https://github.com/brunob/leaflet.fullscreen
  api.addFiles(["Control.FullScreen.css", "Control.FullScreen.js", "img/icon-fullscreen.png"],  'client');

  // Our custom tile layer
  api.addFiles("leafletOffset.js", 'client');
  api.export(['offsetTileLayer'], 'client');

  // helper function for creating a leaflet instance
  api.addFiles("setupLeaflet.js", "client");
  api.export(['setupLeaflet'], 'client');
});
