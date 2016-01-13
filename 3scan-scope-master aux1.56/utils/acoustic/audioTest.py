"""PyAudio example: Record a few seconds of audio and save to a WAVE file."""

import pyaudio, time, struct
import numpy as np
from scipy import ndimage
from pylab import *


sampleRate = 44100


def audioCapture(timeToCapInSeconds):
    chunkSize = 1024 * 4
    # Enable interface
    p = pyaudio.PyAudio()

    # Start the stopwatch and stream
    startTime = time.time()
    stream = p.open(format=pyaudio.paInt16, channels=1, rate=sampleRate, input=True, frames_per_buffer=chunkSize)

    # Catch the fames in here
    frames = []

    print "\tRecording"
    # Recording loop + some slop time
    while (time.time() - startTime) < (timeToCapInSeconds + 0.2):
        data = stream.read(chunkSize)
        npData = np.array(struct.unpack("%dh"%(chunkSize), data))
        frames.append(npData)

    print("\t\t. . . done recording")

    # Close out the connection
    stream.stop_stream()
    stream.close()
    p.terminate()

    # Concatenate the frames, and truncate to the requested length
    sound = np.concatenate(frames)

    print "%i values read:" % sound.shape[0], 
    sound = sound[0:sampleRate*timeToCapInSeconds]
    print " truncated to", sound.shape[0]

    return sound

def rescale(xMin=0, xMax = 500, yMin = None, yMax = None):
    oldAx = list(axis())

    newVals = []
    for new, old in zip([xMin, xMax, yMin, yMax], oldAx):
        if new == None:
            newVals.append(old)
        else:
            newVals.append(new)
            
    axis(newVals)

def captureTransformEtc(timeToCapInSeconds):
    tehSound = audioCapture(timeToCapInSeconds)
    timeInfo = np.linspace(0, timeToCapInSeconds, timeToCapInSeconds * sampleRate)

    tehFreq = np.log(np.abs(np.fft.fft(tehSound)))
    tehFreq = tehFreq[:tehFreq.shape[0]/2]

    freqInfo = np.fft.fftfreq(tehSound.shape[0], d = 1.0 / 44100)[:tehSound.shape[0]/2]

    return timeInfo, tehSound, freqInfo, tehFreq

def segmentStrikes(time, intensity, minStrikeSpacing):
    maxValue = 32700 # 2**15 - 2 # A bit less actully

    inStrike = False
    strikeStartTime = -10000
    lastTimeClipped  = -10000

    strikes = []
    ringEnd = []

    for t, i in zip(time, intensity):
        if inStrike and (t < strikeStartTime + minStrikeSpacing):
            if abs(i) > maxValue:
                lastTimeClipped = t
            continue
                
        if inStrike and (t > strikeStartTime + minStrikeSpacing):
            inStrike = False
            ringEnd.append(lastTimeClipped)

        if abs(i) == maxValue:
            inStrike = True
            strikeStartTime = t
            strikes.append(t)
            
    return strikes, ringEnd


timeToCapture = 4

print "Capturing Room Noise"
sTb, sIb, fTb, fIb = captureTransformEtc(timeToCapture)


print "Hit enter when ready to capture"
raw_input()
sT, sI, fT, fI = captureTransformEtc(timeToCapture)


strikes, ringEnd = segmentStrikes(sT, sI, 1.0)
print strikes, ringEnd

figure()
subplot(4,1,1)
title("Recording")
plot(sT, sI, alpha=0.5)

for s in strikes: axvline(s, color='red',   linewidth=3, alpha=0.5)
for e in ringEnd: axvline(e, color='green', linewidth=3, alpha=0.5)


subplot(4,1,2)
title("Recording Fourier")
plot(fT, fI)
rescale()

subplot(4,1,3)
title("Recording Background Fourier")
plot(fT, fIb)
rescale()

subplot(4,1,4)
title("Power wrt. background")
relativeIntensity = fI / fIb
plot(fT, relativeIntensity, "bo", alpha=0.3)

plot(fT, ndimage.gaussian_filter1d(relativeIntensity, 5), "r")
rescale()


figure()
title("Power wrt. background")
relativeIntensity = fI / fIb
plot(fT, relativeIntensity, "bo", alpha=0.3)

plot(fT, ndimage.gaussian_filter1d(relativeIntensity, 5), "r")
rescale()

show()
