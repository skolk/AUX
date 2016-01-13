import sys, time, random
from KESMAcq.shared.ManagedProcess import ManagedProcess


class FailWhale(ManagedProcess):
    def setup(self):
        pass

    def loop(self):
        print("Thar she blows!")
        sys.stdout.flush()
        time.sleep(random.uniform(3, 7))
        sys.exit(1)
