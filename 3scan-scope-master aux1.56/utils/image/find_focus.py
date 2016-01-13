import sys
import numpy as np
import math
import matplotlib.pyplot as plot
from matplotlib.mlab import csv2rec
import matplotlib.cbook as cbook

def loadDataFile(filename):
    print("Loading:", filename, ". . .")
    f = open(filename)
    r = csv2rec(f)
    print("  Done.")
    return r


def smooth(x,window_len=11,window='hanning'):
    """smooth the data using a window with requested size.
    
    This method is based on the convolution of a scaled window with the signal.
    The signal is prepared by introducing reflected copies of the signal 
    (with the window size) in both ends so that transient parts are minimized
    in the begining and end part of the output signal.
    
    input:
        x: the input signal 
        window_len: the dimension of the smoothing window; should be an odd integer
        window: the type of window from 'flat', 'hanning', 'hamming', 'bartlett', 'blackman'
            flat window will produce a moving average smoothing.

    output:
        the smoothed signal
        
    example:

    t=linspace(-2,2,0.1)
    x=sin(t)+randn(len(t))*0.1
    y=smooth(x)
    
    see also: 
    
    numpy.hanning, numpy.hamming, numpy.bartlett, numpy.blackman, numpy.convolve
    scipy.signal.lfilter
 
    TODO: the window parameter could be the window itself if an array instead of a string
    NOTE: length(output) != length(input), to correct this: return y[(window_len/2-1):-(window_len/2)] instead of just y.
    """

    assert x.ndim == 1, "smooth only accepts 1 dimension arrays."
    assert x.size > window_len, "Input vector needs to be bigger than window size."
    assert window_len > 3, "Smoothing does not make sense at this scale"

    s = np.r_[x[window_len-1:0:-1], x, x[-1:-window_len:-1]]

    if window == 'flat': # moving average
        w = np.ones(window_len, 'd')
    else:
        w = getattr(np, window)(window_len)

    y = np.convolve(w / w.sum(), s, mode='valid')
    return y[np.ceil(window_len / 2 - 1):-np.floor(window_len / 2)]


# Load the data files!
wavelengths = [625, 455, 530]
wavelengthNames = ["r", "g", "b"]
filenames = ["%inm.csv" % i for i in wavelengths]
filenames = [sys.argv[1]]
wavelengthNames = "b"
metrics = [loadDataFile(name) for name in filenames]

# metricSettings = [
#     ('brennergradient', 30),
#     ('squaredgradient', 30),
#     ('tenenbaumgradient', 30),
#     ('threshabsgrad', 30)
# ]

window_length = 15
metricNames = metrics[0].dtype.names[3:]

for metricName in metricNames:
    print("Working on Plotting:", metricName, ". . .")
    plot.figure(figsize=(11, 8))
    plot.title(metricName)

    plot.xlabel("Distance in mm")
    plot.ylabel("Metric Value")

    for colorName, metricData in zip(wavelengthNames, metrics):
        sortr = metricData["z"].argsort()
        zz = metricData["z"][sortr]
        offset = metricData['offset'][sortr]
        imageID = metricData['imageid'][sortr]
        print(imageID[-1])

        metric = metricData[metricName][sortr]
        smoothedMetric = smooth(metric, window_len=window_length, window='hanning')
        maxIndex = smoothedMetric.argmax()
    
        plot.plot(zz, metric, colorName + 'o', alpha=0.2)
        plot.plot(zz, smoothedMetric, colorName)

        plot.plot(zz[maxIndex], smoothedMetric[maxIndex], colorName + "*")
        plot.text(zz[maxIndex], smoothedMetric[maxIndex], "Peak at " + str(zz[maxIndex]), va='bottom', ha='center')
        #plot.show()
    plot.savefig(metricName + ".png")
    plot.close()
    print("  Done")
