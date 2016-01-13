import hashlib
import os
import shutil
import time
import concurrent.futures

import psutil
import boto
from boto.s3.connection import OrdinaryCallingFormat

from KESMShared.db import ImageDB
from KESMAcq.shared.ManagedProcess import ManagedProcess

uploadThreadsPerHour = [5, 10, 10, 10, 10, 10,
                        10, 5, 1, 1, 1, 1,
                        1, 1, 1, 1, 1, 1,
                        1, 1, 2, 2, 5, 5]


_storageLocations = ["/media/raid-array0",
                     "/media/raid-array1"]


def getFileMD5Hex(fileName):
    with open(fileName, "rb") as f:
        return hashlib.md5(f.read()).hexdigest()


class S3Uploader(ManagedProcess):
    '''
    This class manages the creation of buckets for given samples,
    as well as the upload of the related image files.
    '''
    def setup(self):
        os.environ["AWS_ACCESS_KEY_ID"] = self.paths.S3Uploader.AWS_KEY
        os.environ["AWS_SECRET_ACCESS_KEY"] = self.paths.S3Uploader.AWS_SECRET
        # Init the AWS credentials anf configure
        self.s3 = boto.connect_s3(calling_format=OrdinaryCallingFormat())
        self.initBucket()

        # Connect to the image server database,
        self.idb = ImageDB(self.paths.mongo.externalURI)

        # Pretend like we never took a deletion pass
        self._lastDelTime = 0
        self._maxStoreBytes = self.parseMaxStorage()

        self.logger.info("Maximum local storage size computed to be %0.2f TB" % (self._maxStoreBytes / 1e12))

    def parseMaxStorage(self):
        # MRG TODO: Add percentage support here.
        # Parse the max local size as provided by the user
        sizeString = str(self.paths.S3Uploader.maxLocalSize).strip()

        # Handle raw byte count
        if sizeString.endswith("B"):
            sizeString = sizeString.replace("B", "")
            return int(sizeString)

        # Handle Percentage
        if sizeString.endswith("%"):
            percentage = float(sizeString.replace("%", "").strip()) / 100
            totalStorageSize = self.computeLocalStorageSize("total")
            return int(percentage * totalStorageSize)

        # Handle resonable sized byte units
        if sizeString.endswith("PB"):
            mult = 1e15
            suffix = "PB"
        elif sizeString.endswith("TB"):
            mult = 1e12
            suffix = "TB"
        elif sizeString.endswith("GB"):
            mult = 1e9
            suffix = "GB"
        else:
            raise RuntimeError("Unit of max storage must be denoted with PB/TB/GB or be an integer (bytes) amount")

        # Replace the suffis at the end, and strip any pesky white space
        sizeString = sizeString.replace(suffix, "").strip()
        maxSizeInBytes = int(sizeString) * mult

        return maxSizeInBytes

    def initBucket(self):
        bucketName = self.paths.S3Uploader.bucketName
        self.bucket = self.s3.lookup(bucketName)

        # See it it exists remotely
        if self.bucket is None:
            # If not create it
            self.bucket = self.s3.create_bucket(bucketName)

    def _s3KeyNameFromImgDoc(self, imgDoc):
        imageID = imgDoc["_id"]
        sampleID = imgDoc["properties"].get("currentSampleID", "unknown")
        return sampleID.lower() + "/" + imageID.lower() + ".png"

    def isKeyInBucket(self, keyName):
        return self.bucket.get_key(keyName) is not None

    def findTilesOnDisk(self, imgUUID):
        return self.findOnArrays("rawImageData/tile", imgUUID)

    def findImageOnDisk(self, fileName):
        return self.findOnArrays("rawImageData/data", fileName)

    def findOnArrays(self, prefix, fileName):
        for location in _storageLocations:
            fullPath = os.path.join(location, prefix, fileName)
            if os.path.exists(fullPath):
                return fullPath
        return None

    def doUpload(self, imgDoc):
        # Compute the bucket name
        imgKeyName = self._s3KeyNameFromImgDoc(imgDoc)

        imgID = imgDoc["_id"]
        # Compute the filename and location
        filePath = self.findImageOnDisk(imgID + ".png")

        # If the image is missing on disk, tag it.
        if filePath is None:
            self.idb.tagImage(imgID, "missing")
            self.logger.warn("Image missing on disk.  Tagged. (" + imgID + ")")
            return 0

        # If the image is already uploaded, tag it and make some noise
        if self.isKeyInBucket(imgKeyName):
            self.idb.tagImage(imgID, "s3")
            self.logger.warn("Image to upload already present in s3 (" + imgID + ")")
            return 0

        try:
            # Do the actual upload
            k = self.bucket.new_key(imgKeyName)
            fp = open(filePath, "rb")
            k.set_contents_from_file(fp)

            # Success condition!
            self.idb.tagImage(imgID, "s3")
            return fp.tell()

        except ConnectionError:
            self.logger.warn("Failure during image upload (" + imgID + ")")
            return 0

    def checkUploaded(self, imgID):
        doc = self.idb._getImageDocByID(imgID)
        return "s3" in doc["tags"]

    def uploadBatch(self, batchSize, threadCount):
        """
        Workhorse function of this class.  This call with upload 'batchSize'
        images to s3 using 'threadCount' Python threads to accelerate s3's
        upload rate.

        This function returns the count of images uploaded, and number attepted.
        """

        startTime = time.time()
        with concurrent.futures.ThreadPoolExecutor(max_workers=threadCount) as executor:
            # Query for the docs we are going to upload in this pass
            imgDocs = list(self.idb.queryNonUploaded(limit=batchSize))

            # Fill up the queue
            future_to_id = {executor.submit(self.doUpload, doc): doc for doc in imgDocs}

            # Wait for it to empty out, accruing some data about time/speed
            successCount = 0
            uploadedBytes = 0
            for future in concurrent.futures.as_completed(future_to_id):
                if future.result() is not None:
                    successCount += 1
                    uploadedBytes += future.result()

        finishTime = time.time()

        # Make a concise report
        uploadSpeedMBPerSec = (uploadedBytes / 1e6) / (finishTime - startTime)
        reportString = "%i/%i images uploaded with %i threads. (~%f MB/s)"
        batchReportStr = reportString % (successCount, batchSize, threadCount, uploadSpeedMBPerSec)
        self.logger.info(batchReportStr)

        # Make some noise about failed uploads
        imgQrySize = len(imgDocs)
        failureCount = imgQrySize - successCount
        if failureCount != 0:
            self.logger.warn("%i failures in upload queue." % failureCount)

        return successCount, imgQrySize

    def uploadBalanced(self, batchSize=50):
        # Compute the current hour of day, and change the upload thread count
        self.logger.info("Uploading a batch of %i" % batchSize)
        currentHour = time.localtime().tm_hour
        currentThreadCount = uploadThreadsPerHour[currentHour]
        uploadedCount, qryCount = self.uploadBatch(batchSize, currentThreadCount)

        return uploadedCount

    def possiblyRemoveLocal(self, imgDoc):
        imgID = imgDoc["_id"]
        imageName = imgID + ".png"
        imagePath = self.findImageOnDisk(imageName)
        tilePath = self.findTilesOnDisk(imgID)

        # Bail if we can not find the local file . . .
        if imagePath is None:
            self.imd.tagImage(imgID, "missing")
            self.logger.error("File not on disk id: %s" % imagePath)
            return 0

        # Keep going if tiles are not present, but make some noise.
        if tilePath is None:
            self.logger.warn("Tiles not on disk for id: %s" % imagePath)

        # Compute the key name, and get the key
        keyName = self._s3KeyNameFromImgDoc(imgDoc)
        key = self.bucket.get_key(keyName)
        if key is None:
            self.logger.error("Key does not exist! (%s)" % keyName)
            self.idb.untagImage(imgID, "uploaded")
            return 0

        # Get the aws and local md5's
        keyMD5 = key.etag[1:-1]  # Slice strips in string quotes.
        localMD5 = getFileMD5Hex(imagePath)

        # Compare the MD5's
        if keyMD5 == localMD5:
            print("MD5 match %s" % imgID)

            # Delete local copy, tag as nolocal
            os.remove(imagePath)
            print("\tRemoved image: %s" % imagePath)
            self.idb.tagImage(imgID, "nolocal")

            # Optionally remove the tiles.
            if tilePath is not None:
                shutil.rmtree(tilePath)
                print("\tRemoved tiles: %s" % tilePath)

            return 1
        else:
            # If we made it here, the local and distant md5's do not match.
            # We trust the local copy, and remove the remote one.  This will
            # trigger a later re upload of the image
            self.bucket.delete_key(keyName)
            self.idb.untagImage(imgDoc["_id"], "uploaded")
            self.logger.error("Failure, MD5 hash-mismatch on %s\n\tLocal:%s\n\tRemote:%s" % (imgDoc["_id"], localMD5, keyMD5))
            return 0

    def deleteOldLocals(self, batchSize=50):
        # Query for images that are uploaded, but not delocalized
        cur = self.idb.imageTagQuery(hasTags=["s3"], hasntTags=["nolocal"], sort=(("time", 1),))
        cursorSnapshot = list(cur)  # MRG TODO: .limit(batchSize)
        self.logger.info("%i canidates for local removal" % len(cursorSnapshot))

        removedCount = 0
        with concurrent.futures.ThreadPoolExecutor(max_workers=10) as executor:
            # Fill up the queue
            future_to_id = {executor.submit(self.possiblyRemoveLocal, doc): doc for doc in cursorSnapshot}

            # Wait for it to empty out, accruing some data about time/speed
            for future in concurrent.futures.as_completed(future_to_id):
                result = future.result()
                if result is not None:
                    removedCount += result

        return removedCount

    def computeLocalStorageSize(self, attr="used"):
        totalBytesStored = 0
        for location in _storageLocations:
            totalBytesStored += getattr(psutil.disk_usage(location), attr)
        return totalBytesStored

    def runDeletionPass(self):
        # Check the minimum time first
        if self._lastDelTime + (60 * 60 * 4) < time.time():
            return False

        while True:
            # Keep deleting blocks of uploaded files
            # until we get under the storage ceiling
            storageSpaceUsed = self.computeLocalStorageSize()
            if storageSpaceUsed < self._maxStoreBytes:
                return

            utilizationPercent = 100 * storageSpaceUsed / self._maxStoreBytes
            print("Using %f of allocated local short term storage" % utilizationPercent)

            # Make the call to remove some files
            rCount = self.deleteOldLocals()

            # Make noise if we are unsuccessful at removing files locally
            if rCount == 0:
                self.logger.warn("Deletion call removed 0 files.  But max local storage is exceeded.")
                self.logger.warn("Possible backup of images waiting for upload!")
                return

        self._lastDelTime = time.time()

    def loop(self):
        uploaded = self.uploadBalanced()
        removed = self.runDeletionPass()

        # If we sucessfully uploaded some files
        if (uploaded == 0) and (removed == 0):
            # Report status and chill out for 15
            self.logger.info("All files uploaded.")  # "  Local storage culled.")
            time.sleep(15 * 60)
