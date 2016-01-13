# from http://stackoverflow.com/a/6573827/1531063
class Struct(object):
    '''The recursive class for building and representing objects with.'''
    def __init__(self, obj):
        for k, v in obj.items():
            if isinstance(v, dict):
                setattr(self, k, Struct(v))
            else:
                setattr(self, k, v)

    def __repr__(self):
        return 'Struct({%s})' % str(', '.join('%s : %s' % (k, repr(v)) for (k, v) in self.__dict__.items()))

    def __setitem__(self, key, value):
        if isinstance(value, dict):
            setattr(self, key, Struct(value))
        else:
            setattr(self, key, value)

    def __getitem__(self, key):
        return self.__dict__[key]

    def __contains__(self, key):
        return key in self.__dict__

    def __setattr__(self, key, value):
        if isinstance(value, dict):
            self.__dict__[key] = Struct(value)
        else:
            self.__dict__[key] = value

    def keys(self, *args, **kwargs):
        return self.__dict__.keys(*args, **kwargs)

    def values(self, *args, **kwargs):
        return self.__dict__.values(*args, **kwargs)

    def items(self, *args, **kwargs):
        return self.__dict__.items(*args, **kwargs)

    # convenience method.  Just running dict(struct) throws an error
    def toDict(self):
        ret = {}
        for k, v in self.__dict__.items():
            if isinstance(v, Struct):
                ret[k] = v.toDict()  # recurse!
            else:
                ret[k] = v

        return ret
