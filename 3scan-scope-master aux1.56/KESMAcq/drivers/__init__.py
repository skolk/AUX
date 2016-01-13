import importlib, os
from functools import partial

from KESMAcq.shared.Struct import Struct
from KESMAcq.shared import findMyDirectory
_driverDirectory = findMyDirectory(__file__)


def initHardwareInterfaces(paths):
    """
    Given a fully initialized paths Struct() whose kesmName has been set,
    this function grabs the drivers subobject, and initializes all of the
    requested driver modules in their specified order. For each driver in
    the paths, it will return an instance of the associated driver object.
    """
    # Lets search directories to see what we might import
    # MRG TODO: Scrub __init__ from this listing
    driverNames = os.listdir(_driverDirectory)

    # Get the paths to out current configuration
    def getDriverModuleByName(driverName):
        return importlib.import_module(".".join(["KESMAcq", "drivers", driverName]))
    loadedDrivers = {}

    # The drivers are stored as an array to ensure consistent load order.
    for driverDict in paths.KESMMain.drivers:
        driverType = driverDict["type"]
        assert driverType in ["stage", "camera", "aux"], driverType + " is not a valid driver type"

        driverName = driverDict["name"]
        assert driverName in driverNames, "Driver named '" + driverName + "' is not available"

        driverModule = getDriverModuleByName(driverName)
        loadedDrivers[driverType] = driverModule.initWithPaths(paths)

    return Struct(loadedDrivers)

inf = float("inf")


def registerStageReactions(stage, reactor):
    # Constants
    reactor.registerReactor("stage_id", stage.getStageID, None, inf)

    # Per axis properties
    def reactToPropOnAxis(propName, axis, getMethod, setMethod=None, timeout=1000):
        getter = partial(getMethod, axis)
        setter = partial(setMethod, axis) if setMethod is not None else None
        reactor.registerReactor(propName, getter, setter, timeout)

    absoluteAt10 = partial(stage.absolute1, speed=10)

    for n, label in enumerate(["x", "y", "z"]):
        reactToPropOnAxis('stage_' + label + '_position', n, stage.getAxisPosition, absoluteAt10, timeout=250)
        reactToPropOnAxis('stage_' + label + '_enabled', n, stage.isEnabled, stage.axisEnableDisable)
        reactToPropOnAxis('stage_' + label + '_homed', n, stage.isHomed, lambda ax, null_pass: stage.home(ax))
        reactToPropOnAxis('stage_' + label + '_fault', n, stage.isFault, lambda ax, null_pass: stage.ackAxisFault(ax))

        reactToPropOnAxis('stage_' + label + '_current', n, stage.getCurrentFeedback)

    # Only changes when set by us
    reactor.registerReactor("stage_quadDiv", stage.getQuadDiv, stage.setQuadDiv, inf)
    # reactor.registerReactor("stage_PSOStatus", stage.getPSOStatusString, None, 500)


def registerCameraReactions(camera, reactor):
    # Camera constants
    reactor.registerReactor("camera_magnification", lambda: 10, None, inf)  # MRG TODO: Factor this somewhere else?
    reactor.registerReactor("camera_pixelSize", camera.serialInterface.getPixelSize, None, inf)
    reactor.registerReactor("camera_model", camera.serialInterface.getCameraModel, None, inf)
    reactor.registerReactor("camera_serial", camera.serialInterface.getCameraSerial, None, inf)

    # Properties that only change when set by us
    reactor.registerReactor("camera_lineRate", camera.getLineRate, camera.setLineRate, inf)
    reactor.registerReactor("camera_xSize", camera.getImageWidth, camera.setImageWidth, inf)
    reactor.registerReactor("camera_ySize", camera.getImageHeight, camera.setImageHeight, inf)

    # Things that change periodically without our triggering
    reactor.registerReactor("camera_signals", camera.measureCameraSignals, None, 1000)
    reactor.registerReactor("camera_temp", camera.serialInterface.getTemp, None, 5000)
    reactor.registerReactor("camera_lineFeedback", camera.serialInterface.getQuadFrequency, None, 5000)


def registerAuxReactions(aux, reactor):
    reactor.registerReactor("bath_flow", aux.getFlow, None, 1000)
    reactor.registerReactor("bath_temp", aux.getTemp, None, 1000)
    # reactor.registerReactor("bath_pump", aux.getPump, aux.setPump, 1000)
    # reactor.registerReactor("focus_steps", aux.getSteps, aux.setSteps, 250)
