import time, os
import random

import numpy as np
from PIL import Image, ImageFont, ImageDraw

from KESMAcq.drivers.abstract import AbstractCamera
from .FakeSerialCamera import SerialCamera


TILE_SIZE = 256

fontFile = os.path.join(os.path.dirname(os.path.abspath(__file__)), 'sans.ttf')
font = ImageFont.truetype(fontFile, 50)


class Camera(AbstractCamera):
    def deviceName(self):
        return "Fake"

    def __init__(self, paths, debugPrint=False):
        AbstractCamera.__init__(self, paths)

        # properties of self.thisCamera in the real class
        self.imageWidth = 4096
        self.imageHeight = 12000
        self.channels = 1

        self.lineRate = None
        self._triggerState = False

        self.serialInterface = SerialCamera(self.paths)
        self.enableFakeTriggering()  # defined in the abstract

    def receiveImage(self):
        shape = (self.imageHeight, self.imageWidth)
        imageBrightness = random.randint(220, 255)
        img = Image.new("L", shape, imageBrightness)

        draw = ImageDraw.Draw(img)
        for x in range(0, shape[0], TILE_SIZE):
            for y in range(0, shape[1], TILE_SIZE):
                draw.text((x, y), "(%i, %i)" % (x / TILE_SIZE, y / TILE_SIZE), font=font, fill=0)

        imgData = np.asarray(img).reshape(self.imageHeight, self.imageWidth, self.channels)
        self.logger.info('Generated image!')

        return imgData

    def setAcqThreadState(self, requestedState, timeout=5.0):
        if requestedState == self._imgRunning:
            return

        self.logger.info(("Starting" if requestedState else "Stopping") + " acqThread.")
        if requestedState:
            self._startImageThread()
        else:
            self._stopImageThread()
        time.sleep(1.0)
        return True

    def setFrameTriggerState(self, state):
        self._triggerState = state

    def getFrameTriggerState(self):
        return self._triggerState

    def getImageWidth(self):
        return self.imageWidth

    def getImageHeight(self):
        return self.imageHeight

    def getLineRate(self):
        return self.lineRate

    def setImageWidth(self, xsize):
        self.imageWidth = xsize

    def setImageHeight(self, ysize):
        self.imageHeight = ysize

    def setLineRate(self, rate):
        self.lineRate = rate
        return rate  # return value for compatibility

    def setQuadratureState(self, state):
        pass

    def measureCameraSignals(self):
        return [1, 0, 4]  # made this one up
