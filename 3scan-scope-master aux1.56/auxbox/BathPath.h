#include "BallValve.h"

BallValve::BallValve valve1(PIN_VALVE1_OPEN, PIN_VALVE1_CLOSE);
BallValve::BallValve valve2(PIN_VALVE2_OPEN, PIN_VALVE2_CLOSE);
BallValve::BallValve valve3(PIN_VALVE3_OPEN, PIN_VALVE3_CLOSE);

void setupBathPath() {
  valve1.hold();
  valve2.hold();
  valve3.hold();

  pinMode(PIN_SOLENOID, OUTPUT);
  digitalWrite(PIN_SOLENOID, HIGH);

  pinMode(PIN_PUMP, OUTPUT);
  digitalWrite(PIN_PUMP, HIGH);
}

void setCaptureOn() {
  valve1.open();
  valve2.open();
  valve3.close();

  digitalWrite(PIN_SOLENOID, LOW);
}

void setCaptureOff() {
  valve1.close();
  valve2.close();
  valve3.open();

  digitalWrite(PIN_SOLENOID, HIGH);
}

void setCaptureHold() {
  valve1.hold();
  valve2.hold();
  valve2.hold();

  digitalWrite(PIN_SOLENOID, HIGH);
}

void setValve(int valveNum, boolean open) {
  BallValve *valve;
  switch (valveNum) {
    case 1:
      valve = &valve1;
      break;
    case 2:
      valve = &valve2;
      break;
    case 3:
      valve = &valve3;
      break;
    default:
      sendError(ERROR_MALFORMED_COMMAND);
      return;
  }

  if (open) {
    valve->open();
  } else {
    valve->close();
  }
}

void sendCaptureState() {
  // bits: 0-pump, 1-solenoid, 2-valve1, 3-valve2, 4-valve3, 5-error (will be 1 if we don't know the state of a valve)
  unsigned long bitMask = 0;

  bitMask |= (digitalRead(PIN_PUMP) << 31);
  bitMask |= (digitalRead(PIN_SOLENOID) << 30);
  bitMask |= (valve1.isOpen() << 29);
  bitMask |= (valve2.isOpen() << 28);
  bitMask |= (valve3.isOpen() << 27);

  boolean allValvesHaveBeenSet = valve1.hasBeenSet() && valve2.hasBeenSet() && valve3.hasBeenSet();
  bitMask |= ((! allValvesHaveBeenSet) << 26);

  sendInt(bitMask);
}