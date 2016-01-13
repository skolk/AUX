void setFlowOnOff(bool);
void setPumpOnOff(bool);
void setPumpLevel(uint8_t);

void setupWaterControl() {
  pinMode(PIN_P_PUMP, OUTPUT);
  pinMode(PIN_PUMP_CS, OUTPUT);
  digitalWrite(PIN_PUMP_CS, HIGH);
  digitalWrite(PIN_P_PUMP, HIGH);
  setPumpLevel(0);
}

bool peristalticPumpOn = false;
void setPeristalticPumpOnOff(bool enabled) {
  if (enabled) {
    digitalWrite(PIN_P_PUMP, LOW);
  } else {
    digitalWrite(PIN_P_PUMP, HIGH);
  }
  
  peristalticPumpOn = enabled;
}

uint8_t pumpSetPoint = 0;
void setPumpLevel(uint8_t level) {
  digitalWrite(PIN_PUMP_CS, LOW);
  SPI.transfer(0);
  SPI.transfer(level);
  delay(10);
  digitalWrite(PIN_PUMP_CS, HIGH);

  pumpSetPoint = level;

  bool pumpOn = (level > 0);
  // Have the peristaltic pump mirror the state
  // of the main pump.
  setPeristalticPumpOnOff(pumpOn);
}



// Fill a 32-bit bitMask with data from the water control system.
// bits (from the right): 
// 0-7: pump level
// 8: pump on/off
// 9: solenoid for water flow
void sendWaterControlState() {
  unsigned long bitMask = 0;

  bitMask |= (pumpSetPoint << 0);
  bitMask |= (int(peristalticPumpOn) << 8);

  sendInt(bitMask);
}



