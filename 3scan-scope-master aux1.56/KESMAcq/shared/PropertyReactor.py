import random, time

from KESMAcq.shared import meteorID


class PropertyWrapper(object):
    def __init__(self, getFunction, setFunction, debounceTimeMS):
        self.getFunction = getFunction
        self.setFunction = setFunction if setFunction is not None else lambda x: None
        self.debounceTime = debounceTimeMS
        self.lastCallTime = time.time() + random.uniform(-debounceTimeMS, 0)


class PropertyReactor(object):
    def __init__(self, propertyCollection):
        # List of reactors to a give property change
        self.propertyWrappers = {}

        # Connect to meteor DDP source
        self.pCollection = propertyCollection

    def __contains__(self, propertyName):
        # Used to test for membership of a property name within the reactor
        return self._doPropQuery(propertyName) is not None

    def _doPropQuery(self, propertyName):
        # Retorun the full property document or possibly None
        return self.pCollection.find_one({"property": propertyName})

    def _getProperty(self, propertyName):
        # Like the above but raises on non-existance
        result = self._doPropQuery(propertyName)
        if result is None:
            raise KeyError("Property " + propertyName + " is not in properties database")
        return result

    def reactToProperty(self, propertyName):
        # Check if we know how to react to this property
        assert propertyName in self.propertyWrappers.keys(), "Property {0} is not registered with reactor!".format(propertyName)

        # Unpack the funcitons relavent from storage
        propWrapper = self.propertyWrappers[propertyName]

        # Grab the property from the collection.
        propDoc = self._getProperty(propertyName)

        # Call things to change reality based on property
        actedOn = False
        if not propDoc["acknowledged"]:
            propWrapper.setFunction(propDoc["requestedValue"])
            self.ackProperty(propertyName)
            actedOn = True

        # Enforce Value Update Rate max call rate.
        nextAllowedCallTime = propWrapper.lastCallTime + (propWrapper.debounceTime / 1000.)
        updatedTooRecently = nextAllowedCallTime > time.time()

        if actedOn or not updatedTooRecently:
            pQuery = {"property": propertyName}
            pAction = {"$set": {"value": propWrapper.getFunction()}}
            self.pCollection.update(pQuery, pAction)
            propWrapper.lastCallTime = time.time()

    # Called on a hardware driver reset, so pending web changes get clobbered w/o actions.
    def initializeAll(self):
        for propertyName, propWrapper in self.propertyWrappers.items():
            # If the property exists inside the collection update it, otherwise create it
            self[propertyName] = propWrapper.getFunction()

    def __getitem__(self, propertyName):
        return self._getProperty(propertyName)["value"]

    def __setitem__(self, propertyName, value):
        # Check to see if the property exists
        if propertyName in self:
            # Simply update
            self.updateProperty(propertyName, value)
        else:
            # Create it if necessary
            self.createProperty(propertyName, value)

    # Create a new property on the Meteor db.
    def createProperty(self, propertyName, value):
        # This call is syncronous.
        # This should only happen once for each property after a database reset, so no biggie
        newProp = {"_id": meteorID(),
                   "property": propertyName,
                   "value": value,
                   "writable": True,
                   "acknowledged": True,
                   "requestedValue": value}
        self.pCollection.insert(newProp)

    def updateProperty(self, propertyName, value):
        pQuery = {"property": propertyName, "writable": True}
        pSetter = {"$set": {"requestedValue": value, "value": value}}
        self.pCollection.update(pQuery, pSetter)

    # Set the proprty and force the reaction machinery to act on it immidiately
    def reactiveSet(self, propertyName, newValue):
        pw = self.propertyWrappers[propertyName]
        pw.setFunction(newValue)
        newValue = pw.getFunction()
        self.updateProperty(propertyName, newValue)

    def getCurrentPropDict(self):
        return {propDoc["property"]: propDoc["value"] for propDoc in self.pCollection.find()}

    def reactAll(self):
        # Fire off reactions for properties that we have registered reactions to
        [self.reactToProperty(prop) for prop in self.propertyWrappers.keys()]

    def ackProperty(self, propertyName):
        pQuery = {"property": propertyName}
        pAction = {"$set": {"acknowledged": True, "writable": True}}
        # Grab the property from the collection.
        self.pCollection.update(pQuery, pAction)

    # Symmetric functions to add and remove callbacks for updating and acting on properties
    def registerReactor(self, propertyName, getFunction, setFunction=lambda null: None, debounceTime=1000):
        self.propertyWrappers[propertyName] = PropertyWrapper(getFunction, setFunction, debounceTime)

    def unregisterReactor(self, propertyName):
        del self.propertyWrappers[propertyName]
