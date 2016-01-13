import sys


def dbPrint(*args, **kwargs):
    print(*args, **kwargs)
    sys.stdout.flush()
    sys.stderr.flush()


class Printer(object):
    """
    To be instantiated as an instance variable of other classes
    during initialization, to de-clutter `if self.debugPrint` statements.
    Use like the following:

    def __init__(self, debugPrint=False):
        self.dbPrint = Printer(debugPrint=debugPrint)
        self.dbPrint("This will only print if debugPrint is True.")
    """
    def __init__(self, debugPrint=True):
        self.debugPrint = debugPrint

    def dbPrint(self, *args, **kwargs):
        if self.debugPrint:
            dbPrint(*args, **kwargs)

    def __call__(self, *args, **kwargs):
        self.dbPrint(*args, **kwargs)
