import os, time, zmq

from KESMAcq.shared.ManagedProcess import ManagedProcess


class IOThread(ManagedProcess):
    """Writes files to the RAID array."""
    def setup(self):
        if not os.path.isdir(self.paths.IOThread.dataFilePath):
            errStr = "IOThread data path \"%s\" is not a directory. Is the RAID mounted?"
            raise AssertionError(errStr % self.paths.IOThread.dataFilePath)

        self.zmqCtx = zmq.Context()
        self.dataSock = self.zmqCtx.socket(zmq.REP)
        self.dataSock.bind("tcp://*:" + str(self.paths.globals.zmqPorts.io))

    def getFullFilePath(self, filename):
        return os.path.join(self.paths.IOThread.dataFilePath, filename)

    def writeFiles(self, fileDict):
        numFiles = len(fileDict)
        if numFiles == 1:
            self.logger.info("IO received a request to write file: %s" % list(fileDict.keys())[0])
        else:
            self.logger.info("IO recevied a request to write %i files." % len(fileDict))

        # Tally up the data size
        bytesWritten = 0

        # For each pair, write to disk
        for fileName, fileData in fileDict.items():
            # Compute the full path
            fullFilePath = self.getFullFilePath(fileName)

            # Make sure the directory exists
            folderpath, basename = os.path.split(fullFilePath)
            if not os.path.isdir(folderpath):
                os.makedirs(folderpath)

            # File -> open, write, flush, closed
            f = open(fullFilePath, "wb")
            f.write(fileData)
            f.flush()
            f.close()

            bytesWritten += len(fileData)

        # Ack that all data was written
        self.dataSock.send("".encode('ascii'))
        ioTime = time.time()

        mbWritten = bytesWritten / 2 ** 20

        netTime = self.recvTime - self.loopStartTime
        ioTime = ioTime - self.recvTime
        tTime = netTime + ioTime

        self.logger.info("%i MB written in %f seconds (%f MB/S).  Approx IO Utilization: %f" % (mbWritten, ioTime, mbWritten / ioTime, 100.0 * (ioTime / tTime)))

    def removeFiles(self, filenames):
        numFiles = len(filenames)
        if numFiles > 1:
            self.logger.info('IO received a request to remove %i files.' % len(filenames))
        else:
            self.logger.info('IO received a request to remove file: ' + filenames[0])

        for filename in filenames:
            fullFilePath = self.getFullFilePath(filename)
            try:
                os.remove(fullFilePath)
            except FileNotFoundError:
                self.logger.warn('File ' + fullFilePath + ' did not exist, could not remove.')

        self.logger.info('Removed %i files.' % len(filename))
        # respond with an ack
        self.dataSock.send("".encode('ascii'))

    def checkIfFilesExist(self, filenames):
        self.logger.info('IO received a request to check for the existence of % files.' % len(filenames))
        returnDict = {}
        for filename in filenames:
            fullFilePath = self.getFullFilePath(filename)
            returnDict[filename] = os.path.isfile(fullFilePath)

        self.dataSock.send_pyobj(returnDict)

        numValues = lambda d, value: list(d.values()).count(value)

        numFound = numValues(returnDict, True)
        numNotFound = numValues(returnDict, False)
        self.logger.info('%i files exist, %i files do not.' % (numFound, numNotFound))

    def loop(self):
        self.loopStartTime = time.time()
        # Receive a dict of filenames keying to data strings
        # or 'delete': ['filename1', 'filename2']
        recvData = self.dataSock.recv_pyobj()
        self.recvTime = time.time()

        if 'remove' in recvData:
            self.removeFiles(recvData['remove'])
        elif 'check' in recvData:
            self.checkIfFilesExist(recvData['check'])
        elif 'add' in recvData:
            self.writeFiles(recvData['add'])
        else:
            print(recvData.keys())
            raise Exception('Bad input to IOThread: ')
