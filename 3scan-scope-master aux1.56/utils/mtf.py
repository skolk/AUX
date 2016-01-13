import os, sys

import pymongo
import urllib.request
import numpy as np
from scipy import ndimage

sampleName = sys.argv[1]

c = pymongo.MongoClient("mongodb://192.168.1.38:27017/meteor")
sampleId = c.meteor.samples.find_one({"name": sampleName})["_id"]


imageEntry = c.meteor.imageMetadata.find_one({
    "properties.currentSampleID": sampleId,
    "tags": {"$in": ["saved"]}
}, sort=[("time", -1)])

print("imageId:", imageEntry["_id"])

# startMM, endMM, freq
sections = np.array([
    (2.12, 4.62, 1.25),
    (5.79, 7.64, 1.67),
    (8.5, 10.2, 2.08),
    (10.7, 12.5, 2.5),
    (12.9, 14.8, 2.86),
    (15.4, 17.1, 3.33),
    (17.5, 19.4, 3.85),
    (19.7, 22, 4.17),
    (22.4, 24, 5),
    (24.5, 26.1, 6.67),
    (26.5, 28.25, 10),
    (28.4, 30, 12.5),
    (30.4, 31.8, 16.67),
    (32.3, 33.9, 26),
    (34.2, 36, 50),
    (36.1, 37.7, 100),
    (38.2, 39.8, 200),
    (40.2, 42, 250)
])


def mmToPixels(mm):
    micronsPerPixel = 1.056
    return 1000.0 * mm / micronsPerPixel

print(sections.shape)

sections[:, 0:2] += mmToPixels(sections[:, 0:2] + imageEntry["properties"]["slice_X_min"])
sections[:, 0] = np.floor(sections[:, 0])
sections[:, 1] = np.ceil(sections[:, 1])
print(sections)

imageFileName = imageEntry["_id"] + '.png'

# Download the image if we don't already have it
if not os.path.isfile(imageFileName):
    url = "http://data.kesm.3scan.com/" + imageEntry["_id"] + ".png"

    print("Downloading image ... it could be real big.")
    response = urllib.request.urlopen(url, timeout=30)

    print('Saving file ...', end='')
    with open(imageFileName, 'wb') as fileWriteHandle:
        fileWriteHandle.write(response.read())
        print('Saved.')
else:
    print("Image already downloaded, beginning analysis.")

# Now that we've got the image file, read it into a numpy array
image = ndimage.imread(imageFileName).mean(axis=2)[::-1, :]  # [0:12000,0:4096]
print("Loaded image.")

from pylab import imshow, plot, show, subplot, ylabel, figure, savefig, colorbar, gray, title


numSections = len(sections)
widthInPixels = image.shape[1]

# Un-normalized MTF.  Each row is the MTF for one section (one frequency band),
# without being divided by M0
mtf_raw = np.zeros((numSections, widthInPixels), dtype=np.float64)
# Fully normalized MTF values.
mtf = np.zeros((numSections, widthInPixels), dtype=np.float64)

for sectionNum, (startPixel, endPixel, freq) in enumerate(sections):
    croppedImage = image[startPixel:endPixel, :, ...]
    print("image #" + str(sectionNum) + " shape:", croppedImage.shape)

    sectionMax = croppedImage.max(axis=0)
    sectionMin = croppedImage.min(axis=0)
    mtf_raw[sectionNum, :] = (sectionMax - sectionMin) / (sectionMax + sectionMin)

    if sectionNum == 0:
        mtf[sectionNum, :] = 1
    else:
        mtf[sectionNum, :] = mtf_raw[sectionNum, :] / mtf_raw[0, :]

    plotting = False
    if plotting:
        imshow(croppedImage, vmin=0, vmax=255)
        title(str(freq))
        gray()
        colorbar()
        show()

fn = "mtf_raw_" + imageEntry["_id"] + ".csv"
np.savetxt(fn, mtf_raw.T, delimiter=',', newline="\n")
fn = "mtf_" + imageEntry["_id"] + ".csv"
np.savetxt(fn, mtf, delimiter=',', newline="\n")

figure(1, figsize=(10, 100))
figure(2, figsize=(10, 100))
for i in range(numSections):
    figure(1)
    subplot(numSections, 1, i + 1)
    plot(mtf[i, :], 'o')
    ylabel(str(sections[i, 2]) + " lp/mm")

    figure(2)
    subplot(numSections, 1, i + 1)
    plot(mtf_raw[i, :], 'o')
    ylabel(str(sections[i, 2]) + " lp/mm")


figure(1)
savefig("derp.png")

figure(2)
savefig("derp-raw.png")

show()
