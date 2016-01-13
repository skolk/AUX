import os, sys, time, struct, zmq
import pymongo
from scipy import ndimage

# Connect to the receptionist socket
ctx = zmq.Context()
iSock = ctx.socket(zmq.PUSH)
iSock.connect("tcp://192.168.1.38:12346")

# Connect to mongo
c = pymongo.MongoClient()
imageCollection = c.meteor.imageMetadata

# Unknown image directory
unkDir = "/media/raid-array/rawImageData/unknown"

# Go through the "unknown": directory created way back when
# https://github.com/3Scan/3scan-scope/blob/315dbf54348d256b87dd7ae3a69e250549cfeffd/kesm/archive/compression_thread.py
filez = os.listdir(unkDir)
filez.sort()

# Go through each file
for f in filez:
    # Drill down to recover the epoch time
    # 2013_07_26_17_06_03_x0_y0_z0_t0_v0.tif
    fname, ext = os.path.splitext(f)
    timeTuple = time.strptime(fname[0:19], "%Y_%m_%d_%H_%M_%S")
    timeE = time.mktime(timeTuple)

    # Find the record closest to it (usually off by 1/2 second from time rounding to seconds)
    rec = imageCollection.find_one({"time": {"$lt": (timeE + 1.5) * 1000}}, sort=[("time", -1)])

    # Some of the earliest have no record, so lets ignore them for now
    if rec is None:
        print("No record :(")
        continue


    imgID = rec["_id"]

    print("dt", timeE - rec["time"] / 1000)
    print(fname, "-->", imgID)

    # Check to see if the image loads
    daterz = ndimage.imread(os.path.join(unkDir, f))
    w, h = daterz.shape

    print(h, w)

    # Now for the hard part. Fake an image coming in from the camera:    
    # # Create a new UUID
    
    # Pack the data in like its coming from c/cpp
    height = struct.pack("I", h)
    width  = struct.pack("I", w)
    channels = struct.pack("I", 1)
    data = daterz.tostring()
    
    iSock.send_multipart([imgID.encode("ascii"), height, width, channels, data])

    # Tag the image as grandfathered
    imageCollection.update({"_id":imgID}, {"$push": {"tags": "grandfathered"}})

    input("Press key for next image.")





# Find the record closest to it (usually off by 1/2 second from time rounding to seconds)
print("Mean Delta", sum(dts) / len(dts))


# print(c.meteor.imageMetadata.find_one())

# # Assemble a list of all image uuid's based on db
# print("Scanning Database")
# dbIDs = set([doc["_id"] for doc in imageCollection.find()])

# print("Scanning Filesystem")
# # Compute a list of all image uuid's based on filesystem
# fsList = os.listdir("/media/raid-array/rawImageData/data")
# fsIDs = set([os.path.splitext(f)[0] for f in fsList])

# print("Computing Delta")
# # Compute the above differences
# fsMissing = dbIDs - fsIDs



