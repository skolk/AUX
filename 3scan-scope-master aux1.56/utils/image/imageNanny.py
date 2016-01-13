import os
from pymongo import MongoClient

# Init the database client
client = MongoClient()
imageCollection = client.meteor.imageMetadata

# Assemble a list of all sample names based on db
# TODO

# Assemble a list of all image uuid's based on db
print("Scanning Database")
dbIDs = set([doc._id for doc in imageCollection.find()])

print("Scanning Filesystem")
# Compute a list of all image uuid's based on png names
fsList = os.listdir("/media/raid-array/rawImageData/data")
fsIDs = set([os.path.splitext(f)[0] for f in fsList])

# Compute a list of all image UUID's based on tile directory
fsTiles = os.listdie("/media/raid-array/rawImageData/tile")
tIDs = set(fsTiles)

print("Computing Delta")
# Compute the above differences
dbMissing = fsIDs - dbIDs
fsMissing = dbIDs - fsIDs
printSet = lambda s: "/n".join(s) + "/n%i" % len(s)

# For images not in the database
print("Database is missing:")
printSet(dbMissing)

# For images on the filesystem
# Tag as missing
print("FS is missing:")
printSet(fsMissing)

# For images not tagged as tiled, but existant fire through tiler
# For images not tagged as archived


# Run for files with records on filesystem, but no metadata
def makeMDSurrogate(uuid):
    # Find the image size/shape/channels
    # Use the image fs stat data to put in about the right creation time
    pass


def markMissingData(uuid):
    # Tag the uuid as missing
    pass


def makeTilesForImage(uuid):
    # Coopt the receptionist for this?
    pass
