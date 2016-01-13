import itertools, time, os
import numpy as np


def gsToColor(imageData):
    assert imageData.ndim == 2, "Wrong input dimensions"
    colorData = np.empty(imageData.shape + (3,), dtype=np.uint8)

    for channel in range(3):
        colorData[:, :, channel] = imageData
    return colorData


def deframe(imgData, crop):
    csX, ceX, csY, ceY = crop
    return imgData[csX:ceX, csY:ceY]


def panelize(image, panelSize=(256, 256)):
    xs, ys = image.shape[0:2]
    px, py = panelSize

    # MRG XXX Nasty floor div can truncate.
    for x, y in itertools.product(range(xs // px), range(ys // py)):
        subPanel = image[x * px: (x + 1) * px, y * py: (y + 1) * py]
        yield x, y, subPanel


def preprocess(imgData, crop):
    # MRG NOTE: Crazy specialized atm
    smaller = deframe(imgData, crop=crop)
    lineMedian = np.median(smaller[-21:, :], axis=0)

    localMedian = np.median(lineMedian)

    daterz = smaller.astype(np.int32) - (lineMedian - localMedian)
    daterz[daterz < 0] = 0
    daterz[daterz > 255] = 255

    return daterz.astype(np.uint8)


def computeEntropy(img):
    hist = np.bincount(img.flatten())
    nzHist = hist[hist != 0]
    prob = (1.0 * nzHist) / nzHist.sum()
    return -np.sum(prob * np.log(prob))


def segment(imgData):
    colorized = gsToColor(imgData.squeeze())
    blockCount = 0
    v = {}
    for x, y, panel in panelize(colorized):
        ent = computeEntropy(panel)
        # print(ent)
        if ent > 4.6:
            panel[:, :, 1] = 255
            blockCount += 1
        else:
            panel[:, :, 0] = 255

        v[(x, y)] = ent
    return colorized, blockCount, v

imageSaveLocation = os.path.join(os.path.expanduser("~"), "agilent4")
if not os.path.isdir(imageSaveLocation):
    os.mkdir(imageSaveLocation)


# (13000, -10000, 1024, -1024)
def doItAll(imageData, uuid, crop=(9000, 21000, 0, 4096)):
    # These imports are in here, as the rest of the stack does not require matplotlib
    # As a depencacy, so this keeps it form import crashing the test with fake hardware
    from pylab import figure, subplot, imshow, close, gray, savefig, title, text

    imageData = imageData.squeeze()
    subSection = preprocess(imageData, crop)
    print("Cropped image size:", subSection.shape)
    starttime = time.time()
    seged, count, ents = segment(subSection)
    runtime = time.time() - starttime

    figure(figsize=(24, 24))
    subplot(1, 2, 1)
    title("Runtime %f" % runtime)
    imshow(subSection)
    gray()
    subplot(1, 2, 2)
    imshow(seged)
    for (x, y), ent in ents.items():
        text(50 + y * 256, 128 + x * 256, "%.02f" % ent)

    ment = sum(ents.values()) / len(ents)
    title("Mean Entropy %.02f Patch Count: %i" % (ment, count))
    savefig(os.path.join(imageSaveLocation, uuid + ".png"))
    close()
    return seged, count
