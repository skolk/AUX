import numpy as N 
import matplotlib.pyplot as plot
from matplotlib.mlab import csv2rec
import matplotlib.cbook as cbook

datafile = open("Second attempt at 455nm focal plane.csv")
print ('loading %s' %datafile)
metrics = csv2rec(datafile)

zz = metrics["z"]
offset = metrics['offset']
imageID = metrics['imageid']
BrennerGrad = metrics['brennergradient']
EnergLap = metrics['energylaplace']
Entropy = metrics['entropy']
NormVar = metrics['normvariance']
Pwr = metrics['power']
SqrGrad = metrics['squaredgradient']
TenenGrad = metrics['tenenbaumgradient']
ThreshGrad = metrics['threshabsgrad']
ThreshCon = metrics['thresholdcontent']
ThreshPix = metrics['thresholdpixelcount']
Var = metrics['variance']


plot.figure()
plot.scatter(zz, Entropy)
#plot.show()
plot.savefig('ZvEntropy.png')

plot.figure()
plot.scatter(zz, BrennerGrad)
#plot.show()
plot.savefig('ZvBrenner.png')

plot.figure()
plot.scatter(zz, EnergLap)
#plot.show()
plot.savefig('ZvEnergLap.png')

plot.figure()
plot.scatter(zz, NormVar*1e7)
#plot.show()
plot.savefig('ZvNormVar.png')

plot.figure()
plot.scatter(zz, Pwr)
#plot.show()
plot.savefig('ZvPwr.png')

plot.figure()
plot.scatter(zz, SqrGrad)
#plot.show()
plot.savefig('ZvSqrGrad.png')

plot.figure()
plot.scatter(zz, TenenGrad)
#plot.show()
plot.savefig('ZvTenenGrad.png')

plot.figure()
plot.scatter(zz, ThreshGrad)
#plot.show()
plot.savefig('ZvThreshGrad.png')

plot.figure()
plot.scatter(zz, ThreshCon)
#plot.show()
plot.savefig('ZvThreshCon.png')

plot.figure()
plot.scatter(zz, ThreshPix)
#plot.show()
plot.savefig('ZvThreshPix.png')

plot.figure()
plot.scatter(zz, Var)
#plot.show()
plot.savefig('ZvVar.png')

# zz0=N.array([])
# SqrGrad0=N.array([])

# for i in range(0,len(metrics)):
# 	if offset[i] == 0:
# 		zz0=N.append(zz0,zz[i])
# 		SqrGrad0=N.append(SqrGrad0,SqrGrad[i])


# plot.figure()
# plot.scatter(zz0,SqrGrad0)
# plot.savefig('ZvSqrGrad0.png')


# zz1=N.array([])
# SqrGrad1=N.array([])

# for i in range(0,len(metrics)):
# 	if offset[i] == 1:
# 		print(zz[i])
# 		zz1=N.append(zz1,zz[i])
# 		SqrGrad1=N.append(SqrGrad1,SqrGrad[i])


# plot.figure()
# plot.scatter(zz1,SqrGrad1)
# plot.savefig('ZvSqrGrad1.png')

# zz2=N.array([])
# SqrGrad2=N.array([])

# for i in range(0,len(metrics)):
# 	if offset[i] == 2:
# 		print(zz[i])
# 		zz2=N.append(zz2,zz[i])
# 		SqrGrad2=N.append(SqrGrad2,SqrGrad[i])


# plot.figure()
# plot.scatter(zz2,SqrGrad2)
# plot.savefig('ZvSqrGrad2.png')

# zz3=N.array([])
# SqrGrad3=N.array([])

# for i in range(0,len(metrics)):
# 	if offset[i] == 3:
# 		print(zz[i])
# 		zz3=N.append(zz3,zz[i])
# 		SqrGrad3=N.append(SqrGrad3,SqrGrad[i])


# plot.figure()
# plot.scatter(zz3,SqrGrad3)
# plot.savefig('ZvSqrGrad3.png')

# zz4=N.array([])
# SqrGrad4=N.array([])

# for i in range(0,len(metrics)):
# 	if offset[i] == 4:
# 		print(zz[i])
# 		zz4=N.append(zz4,zz[i])
# 		SqrGrad4=N.append(SqrGrad4,SqrGrad[i])


# plot.figure()
# plot.scatter(zz4,SqrGrad4)
# plot.savefig('ZvSqrGrad4.png')

datafile.close()