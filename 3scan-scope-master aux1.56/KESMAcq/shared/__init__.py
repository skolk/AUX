import os, random, time

js_time = lambda: time.time() * 1000.0

# Safe string/bytes conversion functions to enable better polymorphism.
# `str` doesn't have a `decode` method, and `bytes` doesn't have `encode`,
# so without these utilities a function can only receive one or the other.
toStr = lambda chars: chars if isinstance(chars, str) else chars.decode()
toBytes = lambda chars: chars if isinstance(chars, bytes) else chars.encode("ascii")


def findMyDirectory(fileAttr):
    thisPath, cruft = os.path.split(fileAttr)
    return os.path.abspath(thisPath)


def meteorID(length=17):
    return "".join([random.choice("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890") for e in range(length)])
