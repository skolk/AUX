from KESMAcq.drivers.FakeAux.FakeAux import Aux


def initWithPaths(paths):
    return Aux(paths.globals.zmqEndpoints.log)

__all__ = ["initWithPaths"]
