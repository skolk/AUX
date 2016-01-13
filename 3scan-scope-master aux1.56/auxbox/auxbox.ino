#include <stdio.h>
#include "auxbox_definitions.h"
#include "utils.h"
#include <AccelStepper.h>
#include "FlowSensor.h"
#include "FocusStepper.h"
#include "BathPath.h"
#include "BathTemp.h"

// Setup & Loop

void setup() {
  Serial.begin(9600);

  setupBathPath();
  setupFocusStepper();
  setupFlowMeter();
  setupRelay();
}

#define REQUEST_LENGTH 5
#define END_LINE 10 // byte value of '\n'
#define COMMAND_TIMEOUT_MS 200

// strncmp will return 0 if strings match; convert to 1/true
// If length isn't passed in, then examine the entire request
boolean cmdEqual(char *request, char *value, int length) {
  return ! strncmp(request, value, length);
}
boolean cmdEqual(char *request, char *value) {
  return cmdEqual(request, value, REQUEST_LENGTH - 1);
}

long firstCharTime;
boolean reading = false;

void loop() {
  int numBytesAvailable = Serial.available();

  if (numBytesAvailable >= REQUEST_LENGTH) {

    char request[REQUEST_LENGTH];
    for (int byteIndex = 0; byteIndex < REQUEST_LENGTH; byteIndex ++) {
      request[byteIndex] = Serial.read();
    }

    if (request[REQUEST_LENGTH - 1] == END_LINE) {
      processRequest(request);
    } else {
      sendError(ERROR_MALFORMED_COMMAND);
    }

    // Don't bother setting `reading` here.
    // The next pass of the loop should work either way.

  } else if (! reading && numBytesAvailable > 0) {

    reading = true;
    firstCharTime = millis();

  } else if (reading && millis() - firstCharTime > COMMAND_TIMEOUT_MS) {

    while (Serial.available()) {
      Serial.read();
    }
    reading = false;

  }
}

void echoCommand(char *request) {
  Serial.write(request, 4);
  Serial.print(':');
}

void processRequest(char* request) {
  ERROR_STATE status = OK;

  // Read in the request.  Will be all null if does not end with /n
  if (cmdEqual(request, "PING")) {
    Serial.print("PING:v1.2\n");
  }

  else if (cmdEqual(request, "TEMP")) {
    float temperature = readTemp(&status);
    if (status != OK) {
      sendError(status);
      return;
    }
    echoCommand(request);
    sendFloat(temperature);
  }

  else if (cmdEqual(request, "FLOW")) {
    float flow = readFlow();
    echoCommand(request);
    sendFloat(flow);
  }

  else if (cmdEqual(request, "NSTP")) {
    sendPosition();
  }

  else if (cmdEqual(request, "ZERO")) {
    stepper.setCurrentPosition(0);
    sendPosition();
  }

  else if (cmdEqual(request, "CAPT")) {
    echoCommand(request);
    sendCaptureState();
  }
  
  // CAPTURE OFF (this is a string zero, not a capital o.)
  else if (cmdEqual(request, "CPT0")) {
    setCaptureOff();
    echoCommand(request);
    sendCaptureState();
  }
  
  //CAPTURE ON
  else if (cmdEqual(request, "CPT1")) {
    setCaptureOn();
    echoCommand(request);
    sendCaptureState();
  }
  
  //KILL ALL SIGNALS ( SO RELAY ISN'T RUNNING) 
  else if (cmdEqual(request, "HOLD")) {
    setCaptureHold();
    echoCommand(request);
    sendCaptureState();
  }

  // OPN1, OPN2, OPN3 - open a valve
  else if (cmdEqual(request, "OPN", 3)) {
    int valveNum = request[3] - '0';
    setValve(valveNum, true);

    echoCommand(request);
    sendCaptureState();
  }

  // CLS1, CLS2, CLS3 - close a valve
  else if (cmdEqual(request, "CLS", 3)) {
    int valveNum = request[3] - '0';
    setValve(valveNum, false);

    echoCommand(request);
    sendCaptureState();
  }
  
  //open the solenoid
  else if (cmdEqual(request, "STRT")) {
    digitalWrite(PIN_SOLENOID, LOW);
    echoCommand(request);
    sendCaptureState();
  }

  //close the solenoid
  else if (cmdEqual(request, "STOP")) {
    digitalWrite(PIN_SOLENOID, HIGH);
    echoCommand(request);
    sendCaptureState();
  }

  else if (cmdEqual(request, "PUMP")) {
    echoCommand(request);
    sendCaptureState();
  }

  //pump on
  else if (cmdEqual(request, "PONN")) {
    digitalWrite(PIN_PUMP, LOW);
    echoCommand(request);
    sendCaptureState();
  }
  
  //pump off
  else if (cmdEqual(request, "POFF")) {
    digitalWrite(PIN_PUMP, HIGH);
    echoCommand(request);
    sendCaptureState();
  }
  
  else if (cmdEqual(request, "HOME")) {
    status = runHoming();
    if (status != OK) {
      sendError(status);
      return;
    }
    sendPosition();
  }

  else if (cmdEqual(request, "TSTP")) {
    long newPosition = stepper.currentPosition() + 5000;
    status = moveSafelyToTarget(newPosition);
    if (status != OK) {
      sendError(status);
      return;
    }
    sendPosition();
  }

  else if (cmdEqual(request, "SWHM")) {
    echoCommand(request);
    sendInt(digitalRead(SWITCH_PINS[SWITCH_HOMING]));
  }

  else if (cmdEqual(request, "SWSF")) {
    echoCommand(request);
    sendInt(digitalRead(SWITCH_PINS[SWITCH_SAFETY]));
  }

  else if (cmdEqual(request, "TSTN")) {
    long newPosition = stepper.currentPosition() - 5000;
    status = moveSafelyToTarget(newPosition);
    if (status != OK) {
      sendError(status);
      return;
    }
    sendPosition();
  }

  else if (cmdEqual(request, "GOST")) {
    long newPosition = stepper.currentPosition() + 1;
    status = moveSafelyToTarget(newPosition);
    if (status != OK) {
      sendError(status);
      return;
    }
    sendPosition();
  }

  // This has to be at the end so that we can have other commands that start with ST.
  // Steps absolute (unsigned)
  else if (cmdEqual(request, "ST", 2)) {
    char* requestParam = &request[2];
    int target = getUnsignedInt(requestParam);
    status = moveSafelyToTarget(target);
    if (status != OK) {
      sendError(status);
      return;
    }
    sendPosition();
  }

  else {
    sendError(ERROR_MALFORMED_COMMAND);
  }
}