import json, socket, sys, time, zmq

from KESMAcq.shared import toBytes

LOG_LEVEL_NUM_TO_STRING = {
    -1: "DEBUG",
    0: "INFO",
    1: "WARN",
    2: "ERROR"
}


class ZMQLogger(object):
    def __init__(self, module, server_location, printLocal=True):
        # Init ZMQ context
        self.context = zmq.Context()

        #  Socket to talk to server
        self.socket = self.context.socket(zmq.PUB)
        self.socket.connect(toBytes(server_location))

        # Give Socket time to negotiate subscriptions
        time.sleep(0.1)

        # Store the startup params locally
        self.deviceName = socket.gethostname()
        self.module = module
        self.printLocal = printLocal

    def log(self, message, level=0, **kwargs):
        # Override self's setting with the arg here, if it's present
        printLocal = kwargs.get('printLocal', self.printLocal)

        # If we are barfing locally
        if printLocal:
            print(self.module + " >> " + message)
            sys.stdout.flush()

        # Form a json response:
        msgDict = {"text": message,
                   "deviceName": self.deviceName,
                   "module": self.module,
                   "logLevel": LOG_LEVEL_NUM_TO_STRING[level]}
        js_encoded = json.dumps(msgDict).encode('ascii')
        self.socket.send_multipart([str(level).encode('ascii'), js_encoded])

    def detail(self, message, **kwargs):
        self.log(message, -1, **kwargs)

    def info(self, message, **kwargs):
        self.log(message, 0, **kwargs)

    def warn(self, message, **kwargs):
        self.log(message, 1, **kwargs)

    def error(self, message, **kwargs):
        self.log(message, 2, **kwargs)

    def raiseError(self, message, exceptionClass=RuntimeError, printLocal=True):
        self.log(message, 2, printLocal=True)  # We're gonna want to see this one.
        raise exceptionClass(message)

    @staticmethod
    def createFromPaths(paths, moduleName, printLocal=True):
        """
        Factory method to create a ZMQLogger from a paths dict and module name.
        """
        return ZMQLogger(moduleName, paths.globals.zmqEndpoints.log, printLocal=printLocal)
