# This is a utility that fakes being the
# camera acquisition loop and gerates a lot of images

import uuid, struct, zmq
import numpy as np

from scipy import ndimage, optimize
from pylab import plot, show

imageZMQEndpoint = "tcp://192.168.1.118:12346"


def generateWhiteNoiseImg(shape):
    return np.random.randint(0, 255, size=shape).astype(np.uint8)


def generateSmoothedImage(shape, smoothing):
    rndMap = generateWhiteNoiseImg(shape)
    return ndimage.gaussian_filter(rndMap, smoothing, mode="wrap").astype(np.uint8)

# connect to the receptionist
ctx = zmq.Context()
sock = zmq.Socket(ctx, zmq.PUSH)
sock.connect(imageZMQEndpoint)


def oldTest():
    nImages = 10

    print("Sending 10 images to " + imageZMQEndpoint)
    for x in range(nImages):
        print("Image %i of %i" % (x, nImages))
        # Make a fake uuid
        uid = uuid.uuid4()

        # Default image shape
        shapeOfImg = (4096, 12000)
        imgData = generateWhiteNoiseImg(shapeOfImg)

        # Pack into the size that it expects to unpac from C++
        packedSize = [struct.pack("I", v) for v in shapeOfImg]

        # Send it!
        sock.send_multipart([str(uid)] + packedSize + [imgData])
        print("\tDone.")

    print("Waiting on image handoff . . .")


def computeImageEntropy(img):
    # Given a 2d iamge compute the entropy of the image
    intensityCount = np.bincount(img.flatten(), minlength=256)

    levelProbability = (1.0 * intensityCount[intensityCount != 0]) / intensityCount.sum()
    entropyInBits = -levelProbability * np.log2(levelProbability)
    return sum(entropyInBits)


def estimateSmoothingKernelSize(desiredEntropy, bound=0.1, testImgSize=(256, 256)):
    # This function was used to extimate the entropy to smoothing coefficient
    # Create a closured function which returns the entropy
    # Per bit of a smoothed image
    calls = []
    vals = []

    def entOptFunction(smoothing):
        smoothedMap = generateSmoothedImage(testImgSize, abs(smoothing[0]))
        calculatedEntropy = computeImageEntropy(smoothedMap)
        print("Called", smoothing[0], calculatedEntropy)
        calls.append(smoothing[0])
        vals.append(calculatedEntropy)
        return abs(desiredEntropy - calculatedEntropy) ** 2

    rVec = optimize.anneal(entOptFunction, np.array([10]), lower=0.0, upper=20.0, maxiter=50)

    calls = np.array(calls)
    vals = np.array(vals)

    prune = abs(calls) < 50
    vals = vals[prune]
    calls = abs(calls[prune])
    plot(np.log10(calls), vals, "bo", alpha=0.5)
    show()

    return rVec


class EntropicImageGenerator(object):
    def __init__(self, desiredEntropy):
        self.imgEntropy = desiredEntropy
        self.smoothingCoef = self._entropyToSmootingSize(desiredEntropy)

    def _entropyToSmootingSize(self, desiredEntropy):
        # x is bits/Pix
        # y is log10(smoothing size)

        x1, y1 = (7.81, -0.416)
        x2, y2 = (1.94, 1.31)

        m = (y2 - y1) / (x2 - x1)

        logSmoothing = (m * (desiredEntropy - x2)) + y2
        return 10 ** logSmoothing

    def makeImage(self, size):
        return generateSmoothedImage(size, self.smoothingCoef)


def testEIG():
    eig = EntropicImageGenerator(6)

    for x in range(10):
        img = eig.makeImage((512, 512))
        print(computeImageEntropy(img))
