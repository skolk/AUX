import time

from KESM.shared import ZMQLogger

if __name__ == "__main__":
    endPoint = "tcp://192.168.1.38:12345"
    logger = ZMQLogger('logTest', endPoint)
    time.sleep(5)

    for x in range(2):
        logger.detail("ERMAHGERD logging test successful.")
        logger.info("ERMAHGE    RD logging test successful.")
        logger.warn("ERMAHGERD logging test successful.")
        logger.error("ERMAHGERD logging test successful.")
