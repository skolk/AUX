3Scan Scope Control Center:
===========================
This is the code base which controls the motion of the microscope,
acquisition and storage of images, and user interface and control
of these activities.  

The code base is roughly organized with the following scheme:

System Configuration and Launching
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 * './config' -- conf files for the KESM system (web and python) and for daemons (nginx, mongo, etc.)
 * './KESMAcq' -- Base directory of the Python package associated with this repository
 * 'runscope' -- the script used to launch any process in the system and apply/install the correct configuration

KESM
~~~~

 * './KESMAcq/drivers/*'  -- The hardware interfaces to aux-box/camera/stage/etc
 * './KESMAcq/processes/*'  -- The different python processes that make up the kesm acquisition stack.
 * './KESMAcq/processes/KESMMain.py  -- 
 * './KESMAcq/processSupervisor.py  -- The tool which orchestrates the launch and termination of various KESM processes.

Process Description
~~~~~~~~~~~~~~~~~~~

 * 'KESMMain' -- KESM machine logic which governs the interplay among stage, camera, and database
 * 'Receptionist' -- Process which recieves images and arranges for ther storage/tiling/archival
 * 'IOThread' -- Provides a single interface for all of the image processing tools to avoid competing for disk IO.

Image Processing Processes:
 * 'ImageTiler' -- Performs lossy pyramid tilings of the image in question.
 * 'ImageCompressor' -- Performs lossless storage of the image to any number of possible formats.
 * 'ImageAnalyzer' -- Computes some basic statistics about the image, and stores them in the database.

Web Processes:
 * 'MeteorServer' -- Launches one of the two meteor server types described below.

Testing Processes:
 * 'SuccessKid' -- Simple process that once launched simply runs.
 * 'FailWhale' -- Simple process that once launched simply crashes after a short amount of time.


Web
~~~
 
 * './KESMAcq/web' -- The root directory from which the web arcitecture is housed
 * './KESMAcq/web/systemManager' -- Meteor app directory (has a '.meteor' folder) for the system management server
 * './KESMAcq/web/kesmControl' -- Meteor app directory for the KESM control server
 * './web/webShared' -- Shared code that is symlinked into either server directories before run time.


AuxBox
~~~~~~

 * './auxbox' -- codebase for the microcontroller that runs the auxiliary sensor suite

The three main modules (web, KESM, and image storage chain) communicate through TCP/IP and can be launched
with the launcher utility found in this directory.  Most of the processes are multi-platform, but the Meteor-based web servers 
must be run on a *nix machine, and the KESM process must be run on a specially set up Windows machine that has the stage and camera drivers installed.

The auxbox is currently an arduino microcontroller that connects to the KESM machine and interacts with the database through the property reactor system.  It provides several pieces of auxiliary functionality:
 - Measures water bath temperature
 - Measures water flow rate
 - Controls the slice-capturing mechanism
 - Controls the focus of the optics (using a stepper motor)

usage: launcher.py [-h] [-k] [-s SERVER] [-c] [-p PROCESS] [-n NAME] [-i] [-b] [-u]

Launch the various parts which make up our fine KESM.

optional arguments:
  -h, --help                     Show this help message and exit
  -s, --server                   Launch a web server with name specified
  -c, --client                   Launch a client that can manage multiple worker processes.
  -p PROCESS, --process PROCESS  Launch a single process instance for testing.
  -i, --importTest               Check all imports and report version numbers.

Further details about the system design and configuration can be found here
https://3scan.hackpad.com/Documentation-Overview-aXItUpXtlfF
