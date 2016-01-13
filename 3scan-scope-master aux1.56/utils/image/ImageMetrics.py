import time
import numpy as np
from scipy import ndimage

from KESMAcq.shared import js_time
from KESMAcq.shared.Printer import dbPrint


def runAndTime(func, *args):
    """
    Run a function with the supplied arguments and
    return a tuple of its return value and run time.
    """
    startTime = js_time()
    value = func(*args)
    duration = js_time() - startTime
    return (value, duration)


def getThresholdedGradientImage(image, thresh):
    """
    Returns an image where each pixel is the gradient of the original
    image, thresholded at `thresh` to minimize noise.
    """
    gradientImage = np.diff(image, axis=0)
    mask = gradientImage > thresh
    return gradientImage[mask]


def getSquaredGradient(image, thresh):
    gradientImage = getThresholdedGradientImage(image, thresh)
    return np.sum(gradientImage ** 2, dtype=np.float64)


def getHistogram(image, bitDepth=8):
    numPossibleValues = 2 ** bitDepth
    return np.bincount(image.flatten().astype(np.uint8), minlength=numPossibleValues)


def computeHistEntropy(histogram):
    probs = (1. * histogram[histogram != 0]) / histogram.sum()
    return -np.sum(probs * np.log2(probs))


class ImageMetrics(object):

    def __init__(self, image, imgThreshhold=128, gradientThreshold=10, bitDepth=8):
        assert image.ndim == 2, "Only flat images please!"
        assert image.dtype == np.uint8

        # Store the image, gradient threshold, and gradient image for later computations
        self.image = image
        self.bitDepth = bitDepth
        self.gradientThreshold = gradientThreshold

        self.tImage = self.image > imgThreshhold
        self.gradientImage = np.diff(image, axis=0)
        self.tGradientImage = getThresholdedGradientImage(self.image, self.gradientThreshold)

        self.getAllStatistics()

    def getAllStatistics(self):
        # Slackerly memoize
        if hasattr(self, "stats"):
            return self.stats

        self.hist = getHistogram(self.image, self.bitDepth)

        # Construct the initial statistics
        self.stats = {
            "min": self.image.min(),
            "max": self.image.max(),
            "sum": self.image.sum(),
            "mean": self.image.mean(),
            "variance": self.image.var(),
            "entropy": computeHistEntropy(self.hist)
        }

        # Make sure everything is a float so it can be inserted in the db
        for key, value in self.stats.items():
            self.stats[key] = float(value)

        self.stats["hist"] = self.hist.tolist(),

        # Run all the focus metrics separately
        self.stats["focus"] = self.getFocusMetrics()

        return self.stats

    def getFocusAttrs(self):
        focusPrefix = "focus_"  # All focus-metric methods start with this
        return [attr[len(focusPrefix):] for attr in dir(self) if attr.startswith(focusPrefix)]

    def getFocusMetrics(self):
        focusPrefix = "focus_"

        results = {}
        for metricName in self.getFocusAttrs():
            dbPrint("Computing " + metricName)

            # Compute the value and time the computation
            funcName = focusPrefix + metricName
            value, duration = runAndTime(getattr(self, funcName))  # Get the method and call it

            # Add to the output dict, using the nice-looking name as the key
            results[metricName] = {
                "value": float(value),  # Mongo hates non-floats
                "time": duration / 1000
            }
            #print("Metric '%s' == %f, time elapsed: %f" % (metricName, float(value), duration / 1000))

        return results

    def focus_ThreshAbsGrad(self):
        return np.sum(np.abs(self.tGradientImage), dtype=np.float64)

    def focus_SquaredGradient(self):
        """
        This function can be called without arguments to be used as
        a focus metric in its own right, or it can be called with an image
        as an argument for use in other computations.
        """
        return getSquaredGradient(self.image, self.gradientThreshold)

    def focus_BrennerGradient(self):
        s1 = getSquaredGradient(self.image[::2], self.gradientThreshold)
        s2 = getSquaredGradient(self.image[1::2], self.gradientThreshold)
        return s1 + s2

    def focus_TenenbaumGradient(self):
        sx = ndimage.sobel(self.image, axis=0)
        sy = ndimage.sobel(self.image, axis=1)
        return np.sum(sx ** 2 + sy ** 2, dtype=np.float64)

    # def focus_EnergyLaplace(self):
    #     lapMat = np.array([[-1, -4, -1],
    #                        [-4, 20, -4],
    #                        [-1, -4, -1]])

    #     return np.sum(ndimage.convolve(self.image, lapMat) ** 2)

    # def focus_Variance(self):
    #     return self.stats["variance"]

    # def focus_NormVariance(self):
    #     return self.stats["variance"] / self.stats["sum"]

    # def focus_Entropy(self):
    #     return self.stats["entropy"]

    # def focus_ThresholdContent(self, thresh=128):
    #     return np.sum(self.image[self.tImage])

    # def focus_ThresholdPixelCount(self, thresh=128):
    #     return np.sum(1 * self.tImage)

    # def focus_Power(self):
    #     return np.sum(self.image ** 2)

if __name__ == "__main__":
    import os, sys, pymongo, urllib.request, csv

    sampleName = sys.argv[1]
    outputFileName = sampleName + ".csv"

    dummyImg = np.array([[0, 1], [1, 0]], dtype=np.uint8)
    dummyMetrics = ImageMetrics(dummyImg).getAllStatistics()

    # Make sure we always output these in the right order
    fieldNames = ['z', 'offset', 'imageId'] + sorted(dummyMetrics['focus'].keys())

    outputFile = open(outputFileName, 'w', newline='')  # newline='' is important to the csv lib for some reason
    outputFile.write(','.join(fieldNames) + '\r\n')
    csvFile = csv.DictWriter(outputFile, fieldnames=fieldNames, delimiter=',')

    c = pymongo.MongoClient("mongodb://192.168.1.38:27017/meteor")
    images = c.meteor.imageMetadata
    sampleDoc = c.meteor.samples.find_one({"name": sampleName})
    if sampleDoc is None:
        raise RuntimeError("No sample found with name " + sampleName)
    sampleId = sampleDoc["_id"]

    # We need to make sure the query doesn't get evaluated lazily, because the cursor will time out on the server
    # after ten minutes.  See: http://stackoverflow.com/questions/10298354/mongodb-cursor-id-not-valid-error
    # Converting it to a list from a sequence forces evaluation of the entire sequence.
    for image in list(images.find({"properties.currentSampleID": sampleId, "tags": {"$in": ["saved"]}})):
        dbPrint('Downloading image %s ...' % image["_id"])

        url = "http://data.kesm.3scan.com/" + image["_id"] + ".png"
        response = urllib.request.urlopen(url, timeout=30)

        imageFileName = 'herpderp.png'
        print('Saving temp file ...', end='')
        with open(imageFileName, 'wb') as fileWriteHandle:
            fileWriteHandle.write(response.read())
            dbPrint('Saved.')

        imgData = ndimage.imread(imageFileName, flatten=True).astype(np.uint8)  # [0:12000,0:4096]
        imgData = imgData[:, 1024:1024 * 3, ...]
        os.remove(imageFileName)

        print('Computing image stats ...', end='')
        startTime = time.time()
        metrics = ImageMetrics(imgData).getAllStatistics()
        dbPrint('Done. Elapsed time: %f seconds' % (time.time() - startTime))

        # This is the line that will be output to the csv file
        lineDict = {k: v['value'] for k, v in metrics['focus'].items()}
        lineDict.update({
            'z': image['properties']['slice_Z_min'],
            'imageId': image['_id'],
            'offset': image['offset']
        })

        csvFile.writerow(lineDict)
