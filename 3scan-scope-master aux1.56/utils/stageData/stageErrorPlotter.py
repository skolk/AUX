import argparse, sys, time
from pprint import pprint

import pymongo
import numpy as np

from matplotlib.patches import Ellipse
from pylab import figure, plot, show, subplot, xlabel, ylabel

parser = argparse.ArgumentParser(description="Stage Errors Plotter Utility")
parser.add_argument("ipAddress", metavar="ipAddress", nargs=1,
                    help="IP Address of the mongo instance to connect to.")
parser.add_argument("sampleName", metavar="sampleName", nargs=1,
                    help="Name of the sample")

args = parser.parse_args()


# Connect to the database
mc = pymongo.MongoClient(args.ipAddress)
print(mc.meteor.collection_names())

# unpack relavent collections names
imageMetadataCollection = mc.meteor.imageMetadata
stageDataCollection = mc.meteor.stageData
sampleCollection = mc.meteor.samples


def computeTraceRMSE(errorTrace):
    return np.sqrt(np.sum(errorTrace ** 2 / errorTrace.size))


def toBinary(n):
        return ''.join(str(1 & int(n) >> i) for i in range(16)[::-1])


def quickFFTPlot(data, samplingPeriod):
    trace = np.log10(np.abs(np.fft.fft(data)))
    freqs = np.fft.fftfreq(trace.size, samplingPeriod)
    plot(freqs, trace)


def computeAllRMSE(data):
    RMSE = []
    for n, axisName in enumerate("XYZ"):
        errArray = np.array(data["PositionError_" + axisName])
        RMSE.append(computeTraceRMSE(errArray))
    return tuple(RMSE)


def getAllSliceMeta(sampleName):
    sampleDoc = sampleCollection.find_one({"name": sampleName})
    sampleID = sampleDoc["_id"]
    cursor = imageMetadataCollection.find({"properties.currentSampleID": sampleID})
    cursor.sort([("time", -1)])
    return list(cursor)


def getSliceData(sliceID):
    startTime = time.time()
    r = mc.meteor.stageData.find_one({"imageId": sliceID})
    if r is not None:
        recLength = len(r["data"]["PositionError_X"])
        print(recLength, recLength / (time.time() - startTime))
    return r

    
def plotLastSliceErrors(nBack=0):
    lastTrace = stageDataCollection.find_one({}, sort=[("startTime", -1)], skip=nBack, limit=1)

    samplingRate = lastTrace["sampleRate"] * 1000
    samplingPeriod = 1 / samplingRate

    figure(1)
    xlabel("Time in Seconds")

    figure(2)
    xlabel("Frequency in Hz")

    for n, axisName in enumerate("XYZ"):
        errArray = np.array(lastTrace["data"]["PositionError_" + axisName])
        ts = np.arange(errArray.size) / samplingRate

        figure(1)
        subplot(3, 1, n + 1)
        plot(ts, errArray / 200000 * 1000)
        ylabel(axisName + "Position Error in $\\mu$m")

        figure(2)
        subplot(3, 1, n + 1)
        quickFFTPlot(errArray, samplingPeriod)
        ylabel("Power (dB)")

    show()


def dumpMostRecentToCSV():
    lastDoc = stageDataCollection.find_one({}, sort=[("startTime", -1)], limit=1)
    headers = list(sorted(lastDoc["data"].keys()))
    dataBlock = np.array([lastDoc["data"][traceName] for traceName in headers]).T
    
    output = open("trace.csv", "wb")
    output.write(", ".join(headers).encode("ascii") + "\n".encode("ascii"))
    np.savetxt(output, dataBlock, delimiter=",")

def plotSampleErrors(self, sampleName):
    allSampleSliceDocuments = getAllSliceMeta(sampleName)
    sampleCount = len(allSampleSliceDocuments)

    missing = 0
    results = []

    fig = figure()
    ax = fig.add_subplot(111, aspect='equal')

    for n, sliceDoc in enumerate(allSampleSliceDocuments):
        currentID = sliceDoc["_id"]
        currentSampleStageData = getSliceData(currentID)

        print(n, "/", sampleCount, currentID, currentSampleStageData is not None)
        if currentSampleStageData is None:
            missing += 1
            continue
        r = computeAllRMSE(currentSampleStageData["data"])
        results.append(r)

        # Compute starting y position
        xLoc = sliceDoc["properties"]["slice_Y_min"] + sliceDoc["offset"] * sliceDoc["properties"]["slice_width"]
        zLoc = sliceDoc["properties"]["slice_Z_min"]

        xE, yE, zE = r

        scalar = 50
        ell = Ellipse((xLoc, zLoc), width=xE / scalar, height=zE / scalar, alpha=0.3)

        ax.add_artist(ell)

    xlabel("Slice Location in Y (mm)")
    ylabel("Slice Location in Z (um)")

    ax.set_xlim(0, 60)
    ax.set_ylim(0, 60)
    show()

    print("Missing %i of %i" % (missing, sampleCount))
    figure()
    plot(np.array(results))
    show()

if __name__ == "__main__":
    dumpMostRecentToCSV()
    1/0
    plotLastSliceErrors()
