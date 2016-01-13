import sys, time
from KESMAcq.shared.ManagedProcess import ManagedProcess


class SuccessKid(ManagedProcess):
    def setup(self):
        pass

    def loop(self):
        print("Winning!")
        sys.stdout.flush()
        time.sleep(3)
