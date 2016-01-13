# This file takes a single argument which is the mongo URI
# It clears the collection labeled _observatory_logs within
# the meteor database

import sys
import pymongo

from pymongo import MongoClient
client = MongoClient()

logsCollection = client.meteor._observatory_logs

print logsCollection.remove({})





