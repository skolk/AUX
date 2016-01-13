from KESMAcq.drivers.SaperaCamera.SaperaCamera import Camera


def initWithPaths(paths):
    return Camera(paths)

__all__ = ["initWithPaths"]
