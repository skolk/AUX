import random
from KESMAcq.drivers.A3200Stage import initFromPaths


class LogFaker:
    zmqLogs = "tcp://192.168.1.38:12346"

paths = LogFaker()
stage = initFromPaths(paths)

input("Press any key to enable stages")

for n in range(3):
    stage.axisEnableDisable(n, True)

input("Press any hey to home stages")
for n in range(3):
    stage.home(n)

input("Press any key to enable quadrature")
stage.setQuadDiv(400)


while True:
    input("Press any key to commence random motion")
    for n in range(3):
        newPosition = random.uniform(2, 53)
        stage.absolute1(n, newPosition, 15)
