/* globals
container:true, camera:true, scene:true, renderer:true,
cube:true, innerCube:true, cubeExtents:true, squares:true, knife:true,
disabledIfSlicingOrChanging:true, slicingOrChanging:true, makeCubeVertices:true,
THREE, TWEEN, requestAnimationFrame, getPropValue, getProperty,
guiUtils, AxisList, axisIndex
*/

// ERMAHGERD GLOBALS!!!!!
container = null;
camera = null;
scene = null;
renderer = null;
cube = null;
innerCube = null;
knife = {
  tween: null, // used for animating,
  tweenLocation: { x: 0, y: 0, z: 0 }, // used by the tween to track the current position
  targetLocation: { x: 0, y: 0, z: 0 }, // the animation target
  mesh: null, // the object that THREE.js renders,
  needsUpdate: false,
  resetTween: function() {
    if (knife.tween) {
      knife.tween.stop();
    }
    knife.tween = new TWEEN.Tween(knife.tweenLocation)
      .to(knife.targetLocation, 400)
      .onUpdate(function() {
        knife.mesh.position.x = knife.tweenLocation.x;
        knife.mesh.position.y = knife.tweenLocation.y;
        knife.mesh.position.z = knife.tweenLocation.z;
      })
    .start();

    knife.needsUpdate = false;
  }
};

var outerSize = 200;
var innerSize = 100;

var makeSquare = function(normalAxis, startOrEnd) {
  var squareGeometry = new THREE.Geometry();
  squareGeometry.vertices = makeSquareGeometry(normalAxis, startOrEnd);
  squareGeometry.faces.push(new THREE.Face3(0, 1, 2));
  squareGeometry.faces.push(new THREE.Face3(2, 3, 0));

  var squareMaterial = new THREE.MeshBasicMaterial({
    wireframe: true,
    color: 0xef6500
  });

  var squareMesh = new THREE.Mesh(squareGeometry, squareMaterial);

  return squareMesh;
};

var realWorldToCube = function(x) {
  return (outerSize / 60 * x) - outerSize / 2;
};

var invertAxis = function(value) {
  return 60 - value;
};

var realWorldToVectors = function(vertices) {
  return _.map(vertices, function(realWorldVertex) {
    var cubeVertex = _.map(realWorldVertex, realWorldToCube);
    return new THREE.Vector3(cubeVertex[0], cubeVertex[1], cubeVertex[2]);
  });
};

// normalAxis says which axis the square will be normal to,
// startOrEnd will be 'start' or 'end', signifying which side of the cube
// the square is on.
// params will be a full list of cube extents.
var makeSquareGeometry = function(normalAxis, startOrEnd, debug) {
  var p = EJSON.clone(cubeExtents);

  var isStart = (startOrEnd === 'start');
  var valueOnNormalAxis = isStart? 0 : 60;
  var normalAxisIndex = axisIndex(normalAxis);
  var otherAxes = _.without(['x', 'y', 'z'], normalAxis);

  if (debug) {
    console.log('normalAxisIndex: '+normalAxisIndex);
    console.log('otherAxes: '+otherAxes);
  }

  var vertices = [
    [0, 0, 0],
    [0, 0, 0],
    [0, 0, 0],
    [0, 0, 0]
  ];

  _.each(vertices, function(vertex, index) {
    if (debug) {
      console.log('index: '+index);
      console.log('vertices[index]: '+vertices[index]);
      console.log('valueOnNormalAxis: '+valueOnNormalAxis);
    }
    vertices[index][normalAxisIndex] = valueOnNormalAxis;
    if (debug) {
      console.log('vertices[index]: '+vertices[index]);
    }
  });

  if (debug) {
    console.log(vertices);
  }

  var axis, i;

  axis = otherAxes[0];
  i = axisIndex(axis);
  if (debug) {
    console.log('i: '+i);
    console.log('vertices[i]: '+vertices[i]);
    console.log('valueOnNormalAxis: '+valueOnNormalAxis);
  }
  vertices[0][i] = p['start'][axis];
  vertices[1][i] = p['end'][axis];
  vertices[2][i] = p['end'][axis];
  vertices[3][i] = p['start'][axis];

  if (debug) {
    console.log('i: '+i);
    console.log('vertices[i]: '+vertices[i]);
    console.log('valueOnNormalAxis: '+valueOnNormalAxis);
  }

  axis = otherAxes[1];
  i = axisIndex(axis);
  vertices[0][i] = p['end'][axis];
  vertices[1][i] = p['end'][axis];
  vertices[2][i] = p['start'][axis];
  vertices[3][i] = p['start'][axis];

  if (debug) {
    console.log('i: '+i);
    console.log('vertices[i]: '+vertices[i]);
    console.log('valueOnNormalAxis: '+valueOnNormalAxis);
  }

  if (debug) {
    console.log(vertices);
  }

  return realWorldToVectors(vertices);
};

makeCubeVertices = function() {
  var params = EJSON.clone(cubeExtents);
  var x0 = params.start.x;
  var x1 = params.end.x;
  var y0 = params.start.y;
  var y1 = params.end.y;
  var z0 = params.start.z;
  var z1 = params.end.z;

  return realWorldToVectors([
    [x1, y1, z1],
    [x1, y1, z0],
    [x1, y0, z1],
    [x1, y0, z0],
    [x0, y1, z0],
    [x0, y1, z1],
    [x0, y0, z0],
    [x0, y0, z1]
  ]);
};

var canvasWidth = 400;
var canvasHeight = 400;

// container must be an already-existing DOM element
var initWebGL = function(container) {

  // create the camera
  // camera = new THREE.Camera( 70, window.innerWidth / window.innerHeight, 1, 1000 );
  // camera = new THREE.OrthographicCamera( window.innerWidth / - 2, window.innerWidth / 2, window.innerHeight / 2, window.innerHeight / - 2, -500, 1000 );
  camera = new THREE.PerspectiveCamera(45, canvasWidth / canvasHeight, 1, 1000);

  // create the Scene
  scene = new THREE.Scene();

  // create the Cube
  cube = new THREE.Mesh(
    new THREE.CubeGeometry(outerSize, outerSize, outerSize),
    new THREE.MeshBasicMaterial({
      color: 0x400050,
      wireframe: true
    })
    // new THREE.MeshNormalMaterial({
    //   transparent: true,
    //   opacity: 0.3
    // })
  );

  // create the inner Cube
  innerCube = new THREE.Mesh(
    new THREE.CubeGeometry(innerSize, innerSize, innerSize),
    new THREE.MeshNormalMaterial({
      transparent: true,
      opacity: 0.4
    })
  );

  (new THREE.JSONLoader()).load('/wedgeGeometry.json', function(geometry) {
    var wedge = new THREE.Mesh(geometry, new THREE.MeshBasicMaterial({
      color: 0x000000
    }));
    var scale = 0.02;
    wedge.scale.set(scale, scale, scale);

    wedge.position.x = 0;
    wedge.position.y = 0;
    wedge.position.z = 0;

    wedge.rotation.x = -Math.PI / 2;
    wedge.rotation.y = Math.PI / 2;

    knife.mesh = wedge;

    knife.resetTween();

    scene.add(knife.mesh);
  });

  // add the cubes to the scene
  scene.add(cube);
  scene.add(innerCube);

  _.each(squares, function(values, startOrEnd) {
    _.each(squares[startOrEnd], function(values, axis) {
      squares[startOrEnd][axis] = makeSquare(axis, startOrEnd);
      scene.add(squares[startOrEnd][axis]);
    });
  });

  // init the WebGL renderer and append it to the Dom
  renderer = new THREE.WebGLRenderer();
  renderer.setSize(canvasWidth, canvasHeight);
  container.appendChild(renderer.domElement);

  camera.up.set(0, 0, -1);

  // set up the perspective view
  var radius = 400;
  var angle = 1.1;
  var smallAngle = 0.5;
  var piOver2 = Math.PI / 2;
  camera.position.x = cube.position.x + radius * Math.sin(angle); // - (Math.PI / 2));
  camera.position.y = cube.position.y + radius * Math.sin(angle + piOver2);
  camera.position.z = cube.position.z + radius * Math.cos(smallAngle + piOver2);
  camera.lookAt( cube.position );
};

// ## Render the 3D Scene
var renderWebGL = function() {

  innerCube.geometry.vertices = makeCubeVertices(cubeExtents);
  innerCube.geometry.verticesNeedUpdate = true;

  _.each(squares, function(values, startOrEnd) {
    _.each(squares[startOrEnd], function(values, axis) {
      squares[startOrEnd][axis].geometry.vertices = makeSquareGeometry(axis, startOrEnd);
      squares[startOrEnd][axis].geometry.verticesNeedUpdate = true;
    });
  });

  // this `if` is a little gross but we do somehow need to check whether the knife
  // has been instantiated, otherwise we'll get errors.
  if (knife.mesh) {
    TWEEN.update();

    if (knife.needsUpdate) {
      knife.resetTween();
    }
  }

  // actually display the scene in the Dom element
  renderer.render( scene, camera );
};

var animateWebGL = function() {
  renderWebGL();

  requestAnimationFrame(animateWebGL);
};

Template.cubes.rendered = function() {
  initWebGL(this.firstNode);
  animateWebGL();
};

cubeExtents = {
  start: {
    x: 10,
    y: 10,
    z: 10
  },
  end: {
    x: 50,
    y: 50,
    z: 50
  }
};

Tracker.autorun(function() {
  cubeExtents = {
    start: {
      x: getPropValue('slice_X_min'),
      y: invertAxis(getPropValue('slice_Y_min')),
      z: getPropValue('slice_Z_min')
    },
    end: {
      x: getPropValue('slice_X_max'),
      y: invertAxis(getPropValue('slice_Y_max')),
      z: getPropValue('slice_Z_max')
    }
  };
});

Tracker.autorun(function() {
  knife.targetLocation = {
    x: realWorldToCube(getPropValue('stage_x_position', 30)),
    y: realWorldToCube(invertAxis(getPropValue('stage_y_position', 30))),
    z: realWorldToCube(getPropValue('stage_z_position', 30))
  };
  knife.needsUpdate = true;
});

squares = {
  start: {
    // x: null,
    // y: null,
    z: null
  },
  end: {
    x: null,
    y: null,
    // z: null
  }
};
