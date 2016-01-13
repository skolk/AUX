#if (ARDUINO >= 100)
 #include "Arduino.h"
#else
 #include "WProgram.h"
#endif

typedef int SWITCH_NUM;

#define SWITCH_HOMING 0
#define SWITCH_SAFETY 1

#define HOMING_EXTREME -20000

const int SWITCH_PINS[] = { PIN_SWITCH_HOMING, PIN_SWITCH_SAFETY };
const int SWITCH_RECOVERY_DIRECTIONS[] = { 1, -1 };

#ifdef NO_SWITCHES_ATTACHED
// Meanwhile, in opposite world, set the default
const int SWITCH_TRIGGERED_STATES[] = { LOW, LOW };
#else
const int SWITCH_TRIGGERED_STATES[] = { HIGH, HIGH };
#endif

// Initialize the switch states to be not triggered.
int switchStates[] = {
  ! SWITCH_TRIGGERED_STATES[0],
  ! SWITCH_TRIGGERED_STATES[1]
};

boolean isHomed = false;

// MOTOR SETTINGS
#define STEPPER_MAX_SPEED 600
#define STEPPER_ACCELERATION 600

AccelStepper stepper(AccelStepper::DRIVER, PIN_MOTOR_STEP, PIN_MOTOR_DIR);

boolean getIsHomed(void);
void sendPosition(void);
boolean checkLimit(SWITCH_NUM);
boolean checkLimits(void);
void recoverFromLimit(SWITCH_NUM);
ERROR_STATE recalculateStepsFromHome(void);
ERROR_STATE runHoming(void);
ERROR_STATE moveSafelyToTarget(uint16_t);
void setupFocusStepper(void);

void sendPosition() {
  long position = stepper.currentPosition();
  Serial.print("NSTP:");
  sendInt(position);
}

boolean getIsHomed(void) {
  return isHomed;
}

// returns T/1 if pin readout matches triggered state
boolean checkLimit(SWITCH_NUM switchNum) {
  switchStates[switchNum] = (digitalRead(SWITCH_PINS[switchNum]) == SWITCH_TRIGGERED_STATES[switchNum]);
  return switchStates[switchNum];
}

boolean checkLimits()
{
  return checkLimit(SWITCH_HOMING) || checkLimit(SWITCH_SAFETY);
}

void recoverFromLimit(SWITCH_NUM switchNum) {
  // stop cmd resets step 'queue' to be the smallest # of steps that will gracefully end the movement
  stepper.stop();
  while (stepper.distanceToGo() > 0) {
    stepper.run();
  }

  // check if switch is still triggered; move away from switch if yes
  while (checkLimit(switchNum)) {
    stepper.move(50 * SWITCH_RECOVERY_DIRECTIONS[switchNum]);
    stepper.runToPosition();
  }
}

// get a more accurate number of steps stage is from home
// get number of steps, move to home, move back to where we started
ERROR_STATE calculateStepsFromHome() {
  int originalPosition = stepper.currentPosition();

  stepper.moveTo(HOMING_EXTREME);

  while (! checkLimit(SWITCH_HOMING)) {
    stepper.run();

    // sanity check against mistakes like incorrect wiring
    if (checkLimit(SWITCH_SAFETY)) {
      recoverFromLimit(SWITCH_SAFETY);
      return ERROR_SAFETY_LIMIT;
    }
  }
  
  recoverFromLimit(SWITCH_HOMING);

  long correctedPosition = (originalPosition - stepper.currentPosition());
  stepper.setCurrentPosition(0);
  isHomed = true;
  return moveSafelyToTarget(correctedPosition);
}

// get a more accurate number of steps stage is from home
// get number of steps, move to home, move back to where we started
ERROR_STATE runHoming() {
  stepper.moveTo(HOMING_EXTREME);

  while (! checkLimit(SWITCH_HOMING)) {
    stepper.run();

    // sanity check against mistakes like incorrect wiring
    //if (checkLimit(SWITCH_SAFETY)) {
    //  recoverFromLimit(SWITCH_SAFETY);
    //  return ERROR_SAFETY_LIMIT;
    //}
  }
  
  recoverFromLimit(SWITCH_HOMING);
  stepper.setCurrentPosition(0);
  isHomed = true;
  return OK;
}

ERROR_STATE moveSafelyToTarget(uint16_t newTarget) {
  if (newTarget < 0) {
    return ERROR_OUT_OF_RANGE;
  }

  stepper.moveTo(newTarget);
  while (stepper.distanceToGo() != 0) {
    stepper.run();
        
    // if moving in homing direction, check for homing switch
    if (newTarget < stepper.currentPosition()) {
      if (checkLimit(SWITCH_HOMING)) {
        recoverFromLimit(SWITCH_HOMING);
        return ERROR_HOMING_LIMIT;
      }
    }

    // otherwise check for safety switch
    else {
      //else if (checkLimit(SWITCH_SAFETY)) {
      if (checkLimit(SWITCH_SAFETY)) {
        recoverFromLimit(SWITCH_SAFETY);
        return ERROR_SAFETY_LIMIT;
      }
    }
  }

  return OK;
}

void setupFocusStepper() {
  stepper.setMaxSpeed(STEPPER_MAX_SPEED);
  stepper.setAcceleration(STEPPER_ACCELERATION);
  pinMode(PIN_SWITCH_HOMING, INPUT);
  pinMode(PIN_SWITCH_SAFETY, INPUT);
}
