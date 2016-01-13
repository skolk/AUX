from .imageHelpers import ImageHandler

import numpy as np
import pymongo


class ImageAnalyzer(ImageHandler):
    def getDataSockAddr(self):
        return self.paths.globals.zmqEndpoints.stat

    def computeStats(self, img):
        # Assert monochrome images
        assert img.ndim == 2, "Only flat Images Pls!"
        assert img.dtype == np.uint8
        # MRG TODO: Check bit-depth and do this better
        bitDepth = 8
        possibleValues = 2 ** bitDepth

        # Base computations necessary
        hist = np.bincount(img.flatten(), minlength=possibleValues)
        prob = (1.0 * hist) / img.size

        # Compile the stats for this channel into a dict, converting to make mongo happy
        rStats = {"hist": hist.tolist()}
        rStats["min"] = float(img.min())
        rStats["max"] = float(img.max())
        rStats["mean"] = float(img.mean())
        rStats["variance"] = float(img.var())
        rStats["entropy"] = float(-np.sum(prob[prob != 0] * np.log2(prob[prob != 0])))

        return rStats

    def setup(self):
        ImageHandler.setup(self)
        # Setup the mongo collections we need
        c = pymongo.Connection(self.paths.mongo.externalURI)
        self.imageMetadata = c.meteor.imageMetadata

    def loop(self):
        imageID, imageNDarray = self.receiveImage()

        # Inspect the image dimension
        if imageNDarray.shape[2] == 1:
            colors = "m"  # Monochrome

        elif imageNDarray.shape[2] == 3:
            colors = "rgb"  # red green blue

        s = {}
        for n, color in enumerate(colors):
            # Compute the stats for each color
            s[color] = self.computeStats(imageNDarray[:, :, n])

        # For color images, also compute stats on the flattened image
        if colors == "rgb":
            s["m"] = self.computeStats(imageNDarray.mean(axis=2).astype(np.uint8))

        # Commit it to the database
        self.imageMetadata.update({"_id": imageID}, {"$set": {"stats": s}})

        # Send it off, and ack when written
        self.finalizeImage(imageID)
