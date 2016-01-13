import cffi
from functools import wraps
from threading import RLock


class CFFIDriver:
    def __init__(self, pathToHeaders, nameOfDLL):
        self.ffi = cffi.FFI()
        # Open the reduced header files, and load the dll
        self.ffi.cdef(open(pathToHeaders).read())
        self._lib = self.ffi.dlopen(nameOfDLL)

        self._libLock = RLock()

    def _baseLibCall(self, funcName):
        """
        Make a call into the library, and process the resulting error state
        using the callAndDebug function provided by the subclass.
        If the provided callAndDebug() function makes use of _baseLibCall()
        directly or through the __getattr__() route, it should set the debug
        flag to be False.  Failure to do so may result in infinite recursive
        calls to the error handler.  This is not checked.
        """
        func = getattr(self._lib, funcName)

        @wraps(func)
        def callAndDebug(*args, debug=True):
            r = func(*args)

            # There are some void returning funtions, ignore them
            if (r is not None) and debug:
                self.processError(r, funcName)
            return r

        return callAndDebug

    def __getattr__(self, nameOfAttr):
        """
        Anytime a class makes a call that is not provided by the superclass
        then attept to get the function and call it through the CFFI wrapped
        interface.  This allows subclasses to do self.LibraryCallX() without
        gymnasitcs of touching the .ffi library.
        """
        with self._libLock:
            return self._baseLibCall(nameOfAttr)

    def startCriticalSection(self):
        self._libLock.acquire()

    def endCriticalSection(self):
        self._libLock.release()

    def processError(self, errorReturn):
        raise NotImplemented("Subclass must implement this method.")

    def _unpackCStr(self, cstr):
        return self.ffi.string(cstr).decode("ascii")
