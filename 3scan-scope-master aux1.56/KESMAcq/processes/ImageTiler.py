import os

from .imageHelpers import ImageHandler, encodeTiles


class ImageTiler(ImageHandler):
    def getDataSockAddr(self):
        return self.paths.globals.zmqEndpoints.tile

    def loop(self):
        imageID, imageNDarray = self.receiveImage()

        # Compute the file path
        tilePath = os.path.join("tile", imageID)

        # Encode the tiles into a python dictionary, keying path to file data.
        filesToWrite = encodeTiles(imageNDarray, "jpg", tilePath)

        # Send it off, and ack when written
        self.finalizeImage(imageID, filesToWrite)
