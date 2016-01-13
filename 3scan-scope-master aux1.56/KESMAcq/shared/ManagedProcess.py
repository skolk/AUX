from multiprocessing import Process

from .ZMQLogger import ZMQLogger
from .Printer import Printer


class ManagedProcess(Process):
    """
    All of the cluster processes and the KESM process inherit from this class.
    It configures itself with a logger using the paths dictionary passed into
    its constructor, and it sets up a logger.

    Subclasses should implement setup() and loop(), which behave like they do
    in arduino.  Notably, setup() will be called after the new process has
    already been spawned. This is important for things like ZMQ contexts that
    should not be shared between more than one process.
    """
    def __init__(self, paths):
        """Subclasses should not need to override this."""
        Process.__init__(self)
        self.paths = paths

    def _setupLogger(self):
        """Instantiate """
        # Get the name of the subclass and use it as the logger's module name
        self.moduleName = self.__class__.__name__
        self.logger = ZMQLogger.createFromPaths(self.paths, self.moduleName)
        self._dbPrint = Printer(debugPrint=False)

    def _enableDebugPrint(self):
        """Can be called by a subclass to turn on debug printing, which is off by default.
        This is the sort of thing that we'll do temporarily to debug a particular module.
        """
        self._dbPrint = Printer(debugPrint=True)

    def run(self):
        """Called by the Process superclass in a newly launched
        process when Process.start() is called."""
        self._setupLogger()
        self.setup()

        self.logger.info(self.moduleName + " starting run loop.")

        while True:
            self.loop()

    def setup(self):
        raise NotImplemented

    def loop(self):
        raise NotImplemented
