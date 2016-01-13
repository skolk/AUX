import itertools, os, zmq
from io import BytesIO

import numpy as np
from PIL import Image

from KESMAcq.shared.ManagedProcess import ManagedProcess


def encodeImage(imgArray, formatString):
    '''This function takes in a two arguments, a numpy ndarray,
    and a image format string.  It returns the bytes representation
    of the ndarray encoded into that image format.'''
    # Make a fake file like object that pil will write to
    sio = BytesIO()

    # Make a PIL image view on the ND array (flatten to GS if necessary)
    if (imgArray.ndim == 3) and (imgArray.shape[2] == 1):
        pilImage = Image.fromarray(imgArray[:, :, 0])
    else:
        pilImage = Image.fromarray(imgArray)

    # Pil expects the format "jpeg" as opposed to jpg. . .
    if formatString.lower() == "jpg":
        formatString = "jpeg"  # For reals guys?

    # Write the compressed version to RAM
    pilImage.save(sio, format=formatString)

    # Return the string version
    return sio.getvalue()


def encodeTiles(imgArray, formatString, destinationFolderName, backgroundColor=221):
    tileSize = 256
    xSize, ySize, channels = imgArray.shape

    # Compute the number of image decimations based on the size of the image.
    # For an image 4096px wide and longer than it is wide, this will generate 5 levels.
    # We add 1 to the imageLevels calculation so that at the last tile level, 
    # one tile will cover the entire width (or, rarely, height) of the image.
    minImageDim = min(xSize, ySize)
    imageLevels = int(np.ceil(np.log2(minImageDim) - np.log2(tileSize))) + 1

    # Allocate a buffer to store the tile in. We'll use it repeatedly.
    tileTemp = np.empty((tileSize, tileSize, channels), dtype=imgArray.dtype)

    # We'll populate this as we encode image tiles, and then return it.
    # Each entry looks like   filepath: encodedTileBuffer
    returnDict = {}

    # Loop over the zoom levels, backward. This means we start at the level
    # at which one tile covers the entire width of the image
    # (or height, in the rare case that xSize > ySize), and end at the level
    # at which each tile is pixel-perfect with respect to the original image.
    for z in range(imageLevels)[::-1]:
        # Compute the x and y steps to work over
        xSize, ySize, channels = imgArray.shape
        xTiles = int(np.ceil(xSize / tileSize))
        yTiles = int(np.ceil(ySize / tileSize))

        # Encode the tiles for this zoom level as images and add them to the returnDict
        for xOffset, yOffset in itertools.product(range(xTiles), range(yTiles)):
            # Compute the filename
            filename = "%i_%i" % (yOffset, xOffset) + "." + formatString
            imageSavePath = os.path.join(destinationFolderName, str(z), filename)

            # Compute the starting and ending offsets
            xS = xOffset * tileSize
            xE = xS + tileSize
            yS = yOffset * tileSize
            yE = yS + tileSize

            # Copy the relevant part of the imgArray into the tile, filling
            # any unfilled pixels with the background color.
            imgView = imgArray[xS:xE, yS:yE, :]
            vX, vY, _ = imgView.shape
            tileTemp[:] = backgroundColor
            tileTemp[0:vX, 0:vY, :] = imgView

            # Encode the tile
            returnDict[imageSavePath] = encodeImage(tileTemp, formatString)

        # Decimate downward, and keep working!
        imgArray = imgArray[::2, ::2, :]

    return returnDict


class ImageHandler(ManagedProcess):
    def setup(self):
        self.zmqCtx = zmq.Context()

        # Incoming Data Socket
        self.dataSock = self.zmqCtx.socket(zmq.REP)
        self.dataSock.set_hwm(2)
        self.dataSock.connect(self.getDataSockAddr())

        # Outgoing IO socket
        self.ioSock = self.zmqCtx.socket(zmq.REQ)
        self.ioSock.connect(self.paths.globals.zmqEndpoints.io)

    def receiveImage(self):
        # Recieve the imageID, imageFormat specifier, and actual image raster
        imageID, imageNDarray = self.dataSock.recv_pyobj()

        self.logger.info("Received " + imageID + " " + str(imageNDarray.shape))
        return imageID, imageNDarray

    def finalizeImage(self, imgID, fileDict={}):
        '''This function does three things:
        1) It sends the encoded images off to the io thread
        2) Waits for the IO thread to conform write.
        3) Responds to the image provider that write has occured.'''

        # Send our compressed files to the IO thread, then wait for write confirm
        if len(fileDict) != 0:
            self.ioSock.send_pyobj({'add': fileDict})
            self.ioSock.recv()

        # Return Confirmation
        self.dataSock.send(imgID.encode('ascii'))
        self.logger.info("Done with " + imgID)
