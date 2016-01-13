from KESMAcq.drivers.FakeStage.FakeStage import Stage


def initWithPaths(paths):
    return Stage(paths)

__all__ = ["initWithPaths"]
