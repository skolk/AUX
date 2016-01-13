import cv, time
from scipy import misc, array

def timeit(func, args, nTimes = 5):
    results = []
    for n in range(nTimes):
        startTime = time.time()
        func(*args)
        results.append(time.time() - startTime)

    results = array(results)
    print func, args, results.mean(), results.std()

# Load a test image.
npyImage = misc.imread("testImage.tif")
cvImage  = cv.fromarray(npyImage)

for ext in [".tif", ".png", ".jpg"]:
    timeit(misc.imsave, ["npy" + ext, npyImage])
    timeit(misc.imsave, ["ocv" + ext, npyImage])




