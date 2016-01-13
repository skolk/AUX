#if (ARDUINO >= 100)
 #include "Arduino.h"
#else
 #include "WProgram.h"
#endif

class Relay {
  public:
    Relay(uint8_t, uint8_t);

    void open();
    void close();
    void hold();
    void setState(boolean);
    boolean hasBeenSet();
    boolean isOpen();

  private:
    uint8_t _pinOpen;
    uint8_t _pinClose;
    boolean _hasBeenSet;
    boolean _isOpen;
};