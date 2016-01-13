import os

from .imageHelpers import ImageHandler, encodeImage


class ImageCompressor(ImageHandler):
    def getDataSockAddr(self):
        return self.paths.globals.zmqEndpoints.comp

    def loop(self):
        imageID, imageNDarray = self.receiveImage()

        # Compute the path and compressed image
        imagePath = os.path.join("data", imageID) + ".png"
        imageData = encodeImage(imageNDarray, "png")
        filesToWrite = {imagePath: imageData}

        # Send it off, and ack when written
        self.finalizeImage(imageID, filesToWrite)
