import argparse, itertools, pymongo, time

parser = argparse.ArgumentParser(description="Robotic Experimentation Utility")
parser.add_argument("ipAddress", metavar="ipAddress", nargs=1, help="Mongo Server IP Address")
parser.add_argument("kesmName", metavar="kesmName", nargs=1, help="Name of the sample")

myName = "mrRoboto@3scan.com"
args = parser.parse_args()

# Connect to the database
mc = pymongo.MongoClient(args.ipAddress)

# unpack relavent collections names
imageMetadataCollection = mc.meteor.imageMetadata
stageDataCollection = mc.meteor.stageData
sampleCollection = mc.meteor.samples

propCollection = getattr(mc.meteor, "properties_" + kesmName)
actionCollection = getattr(mc.meteor, "actionQueue_" + kesmName)


def getPropertyByName(propertyName):
	return propCollection.find_one({"property": propertyName})

def getPropertyValue(propertyName):
	return getPropertyByName(propertyName)["value"]

def setPropAndWaitOnAck(propertyName, setTo, timeout=10):
	selector = {"property": propertyName, "writable": True}
	updator  = {"$set": {"value": setTo, "acknowledged": False, "writable": False}}
	propCollection.update(selector, updator) 

	startTime = time.time()
	while time.time() < (startTime + timeout):
		r = getPropertyByName(propertyName)
		if r["acknowledged"]: 
			return r

	raise RuntimeError("Waited more than %i seconds for property named '%s'" % (timeout, propertyName))

def setPropAndWaitOnMatching(propertyName, setTo, timeout=10):
	startTime = time.time()
	setPropAndWaitOnAck(propertyName, setTo)

	while not (getPropertyByName(propertyName)["value"] == setTo):
		if time.time() > (startTime + timeout):
			raise RuntimeError("Property %s never set in time" % propertyName)

def setIfNecessary(propertyName, setTo):
	r = propCollection.find_one({"property": propertyName})
	if r["value"] != setTo:
		setPropAndWaitOnAck(propertyName, setTo)

def takeControl():
	setPropAndWaitOnAck("activeUser", myName)

def relinquishControl():
	setPropAndWaitOnAck("activeUser", "nobody@3scan.com")

def callAction(actionName):
	actionQueue.insert({ "action": actionName, "time": time.time() * 1000 });

def doASlice():
	callAction("requestSlice")
	time.sleep(0.5)
	while getPropertyValue("slice_queue") != 0: pass

def runExperimentMatrix(reportingFunctions, experimentalParams, slicesPerPermutation):
	experimentalVars = list(sorted(experimentalParams.keys()))
	paramArrays = tuple([experimentalParams[varName] for varName in experimentalVars])

	results = []

	for paramValues in itertools.product(*paramArrays):
		# Setup the params for this experiment
		for name, value in zip(experimentalVars, paramValues):
			setIfNecessary(name, value)

		slicingMode()
		for sliceNumber in range(slicesPerPermutation):
			doASlice()
			results.append(list(paramValues) + [r() for r in reportingFunctions])
		maintMode()

	return results

if __name__ == "__main__":
	params = {
	    "slice_thickness": [3, 5, 7],
	    "slice_speed": [2, 3, 4, 5],
	    "rake_angle": [-2, -1, 0, 1, 2]
	}

	takeControl()
	runExperimentMatrix([], params, 5)
	relinquishControl()
