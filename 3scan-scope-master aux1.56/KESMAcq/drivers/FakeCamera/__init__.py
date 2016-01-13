from KESMAcq.drivers.FakeCamera.FakeCamera import Camera


def initWithPaths(paths):
    return Camera(paths)

__all__ = ["initWithPaths"]
