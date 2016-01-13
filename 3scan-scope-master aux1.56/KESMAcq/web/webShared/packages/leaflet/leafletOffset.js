/* globals offsetTileLayer:true, L  */

offsetTileLayer = L.TileLayer.extend({
  options: {
    offset: 0
  },
  initialize: function(url, options) {
    // Call the constructor for the class I inherited from
    L.TileLayer.prototype.initialize.call(this, url, options);
  },

  _getZoomScaleFactor: function() {
    var map = this._map,
      zoom = map.getZoom(),
      //zoomN = this.options.maxNativeZoom,
      minZoom = this.options.minZoom,
      scaleFactor = map.getZoomScale(zoom) / map.getZoomScale(minZoom);
    return scaleFactor;
  },

  _getTileSize: function() {
    return this.options.tileSize; // * this._getZoomScaleFactor();
  },

  _getOffset: function() {
    var ret = this.options.offset.multiplyBy(this._getZoomScaleFactor());
    return ret;
  },

  // tilePoint is the "x:y" key.  This function gets the
  // pixel position for a given "x:y" key.
  _getTilePos: function(tilePoint) {
    var origin = this._map.getPixelOrigin(),
      tileSize = this._getTileSize(),
      offset = this._getOffset();


    var position = tilePoint.multiplyBy(tileSize)
      .subtract(origin)
      .add(offset);

    return position;
  },

  _loadTile: function(tile, tilePoint) {

    //file exists
    tile._layer = this;
    tile.onload = this._tileOnLoad;
    tile.onerror = this._tileOnError;

    this._adjustTilePoint(tilePoint);

    var tilePath = this.getTileUrl(tilePoint);

    // Does exist
    tile.src = tilePath;
  },


  _update: function() {
    if (!this._map) {
      return;
    }

    var bounds = this._map.getPixelBounds();
    var zoom = this._map.getZoom();
    var tileSize = this._getTileSize();
    var offset = this._getOffset();

    if (zoom > this.options.maxZoom || zoom < this.options.minZoom) {
      return;
    }

    // We need to offset the map bounds before figuring out which
    // tile "x:y" keys to load.

    var offsetMapBounds = L.bounds(bounds.min.subtract(offset),
      bounds.max.subtract(offset));

    var tileBounds = L.bounds(offsetMapBounds.min.divideBy(tileSize)._floor(),
      offsetMapBounds.max.divideBy(tileSize)._floor());

    this._addTilesFromCenterOut(tileBounds);

    if (this.options.unloadInvisibleTiles || this.options.reuseTiles) {
      this._removeOtherTiles(tileBounds);
    }
  },

  _addTilesFromCenterOut: function(bounds) {
    var queue = [],
      center = bounds.getCenter();

    var j, i, point;

    var tilesNotToLoad = 0;

    for (j = bounds.min.y; j <= bounds.max.y; j++) {
      for (i = bounds.min.x; i <= bounds.max.x; i++) {
        point = new L.Point(i, j);

        if (this._tileShouldBeLoaded(point)) {
          queue.push(point);
        } else {
          tilesNotToLoad++;
        }
      }
    }

    var tilesToLoad = queue.length;

    if (tilesToLoad === 0) {
      return;
    }

    // load tiles in order of their distance to center
    queue.sort(function(a, b) {
      return a.distanceTo(center) - b.distanceTo(center);
    });

    var fragment = document.createDocumentFragment();

    // if its the first batch of tiles to load
    if (!this._tilesToLoad) {
      this.fire('loading');
    }

    this._tilesToLoad += tilesToLoad;

    for (i = 0; i < tilesToLoad; i++) {
      this._addTile(queue[i], fragment);
    }

    this._tileContainer.appendChild(fragment);
  },

  _tileShouldBeLoaded: function(tilePoint) {
    if ((tilePoint.x + ':' + tilePoint.y) in this._tiles) {
      return false; // already loaded
    }

    var options = this.options;

    if (!options.continuousWorld) {
      var limit = this._getWrapTileNum();

      // don't load if exceeds world bounds
      if ((options.noWrap && (tilePoint.x < 0 || tilePoint.x >= limit)) ||
        tilePoint.y < 0 || tilePoint.y >= limit) {

        return false;
      }
    }

    if (options.bounds) {
      var tileSize = this._getTileSize(),
        // This code should really look like this in the standard
        // leaflet anyway.  The only difference is that I call the
        // _getTilePos instead of hardcoding multiplying by the
        // tileSize.

        // nwPoint = tilePoint.multiplyBy(tileSize),
        nwPoint = this._getTilePos(tilePoint),

        sePoint = nwPoint.add([tileSize, tileSize]),
        nw = this._map.unproject(nwPoint),
        se = this._map.unproject(sePoint);

      // TODO temporary hack, will be removed after refactoring projections
      // https://github.com/Leaflet/Leaflet/issues/1618
      if (!options.continuousWorld && !options.noWrap) {
        nw = nw.wrap();
        se = se.wrap();
      }

      if (!options.bounds.intersects([nw, se])) {
        return false;
      }
    }

    return true;
  }
});
