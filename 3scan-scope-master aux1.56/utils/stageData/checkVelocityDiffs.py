import numpy as np
from numpy.lib.recfunctions import append_fields

import os


# Load data from csv files which have first row as signal names,  
# subsequent rows are instances in time with a data point for each signal type
def loadData(csv_file): 
  if not os.path.isfile(csv_file):
    print("File not found!")

  dataArray = np.genfromtxt(csv_file, names=True, delimiter=',')  # check dtype

  return dataArray

# Calculate velocities for each axis and for commands & errors, add to dict
def addCalculatedVelocity(dataArray, sampleInterval): 

  velocities = [name for name in stage_data.dtype.names if 'Velocity' in name]

  for signalName in velocities:
    print("Calculating velocity for %s." % signalName)

    signaltype = signalName.split("_")[0][len("Velocity"):]
    axis = signalName.split("_")[1]
    datatype = dataArray[signalName].dtype

    pos_signalName = 'Position%s_%s' % (signaltype, axis)
    calc_signalName = 'CalcVelocity%s_%s' % (signaltype, axis)

    calc_velocity_array = np.diff(dataArray[pos_signalName]) / sampleInterval
    calc_velocity_array = np.insert(calc_velocity_array, 0, 0)
 
    dataArray = append_fields(dataArray, calc_signalName, calc_velocity_array, dtypes=datatype, 
                  usemask=False, asrecarray=True)

  return dataArray

# Compare calculated and collected velocities at each timepoint, alert if difference != 0
def checkCalculatedVelocity(dataArray): 
  report_mismatch = lambda index, value: print("\tMismatch at %i, difference is %d" % (index, value))
  mismatches = 0

  calc_velocities = [name for name in stage_data.dtype.names if 'Calc' in name]

  for calc_signalName in calc_velocities:
    print("\nChecking discrepancy between calculated and collected values for %s." % calc_signalName)

    velocity_signalName = calc_signalName.split('Calc')[1]

    differences = list(map((lambda x, y: x - y), dataArray[velocity_signalName], dataArray[calc_signalName]))
    
    # get indices of nonzero differences between calc'd and collected values
    nonzero_differences = np.nonzero(differences)[0]

    if len(nonzero_differences) > 0:
      [report_mismatch(value_index, differences[value_index]) for value_index in nonzero_differences]
    else: 
      print("\tNo discrepancies found.")
    
    mismatches += len(nonzero_differences)

  print("\nThere were %i mismatches." % mismatches)
  

if __name__ == "__main__":
  stage_data = loadData('trace.csv')
  stage_data = addCalculatedVelocity(stage_data, 0.001)
  checkCalculatedVelocity(stage_data)
