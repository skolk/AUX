#include <stdio.h>
#include <SPI.h>
#include "auxbox_definitions.h"
#include "utils.h"
#include <AccelStepper.h>
#include <OneWire.h>
#include "FlowSensor.h"
#include "FocusStepper.h"
#include "WaterControl.h"
#include "BathTemp.h"
#include "LightControl.h"

#define REQUEST_TIMEOUT_MS 200
#define REQUEST_LENGTH 5
#define END_LINE 10 // byte value of '\n'
int safetemp = 0;

void echoCommand(char *);

void setup() {
  long start = millis();
  Serial.begin(115200);
  Serial.setTimeout(REQUEST_TIMEOUT_MS);
  SPI.begin();
  //THIS SHOULD BE IN BATH TEMP - BUT SERIAL COMANDS WON'T WORK WITHOUT IT :/
  pinMode(PIN_HEATER, OUTPUT);

  setupBathTemp();
  setupWaterControl();
  //setupLightControl();
  setupFocusStepper();
  setupFlowMeter();

  _dbPrintStartTime(start);
}

// strncmp will return 0 if strings match; convert to 1/true
// If length isn't passed in, then examine the entire request
boolean cmdEqual(char *request, char *value, int length) {
  return ! strncmp(request, value, length);
}
boolean cmdEqual(char *request, char *value) {
  return cmdEqual(request, value, REQUEST_LENGTH - 1);
}

void loop() {
  if (0 == Serial.available()) {
    return;
  }

  char request[REQUEST_LENGTH];
  
  int numBytesReceived = Serial.readBytes(request, REQUEST_LENGTH);

  // If we don't get the correct number of bytes or the last byte isn't
  // an endline character, then the command is malformed. Send an error message
  // back to the computer and try to recover.
  if (numBytesReceived != REQUEST_LENGTH || request[REQUEST_LENGTH - 1] != END_LINE) {
    sendError(ERROR_MALFORMED_COMMAND);
    
    #ifdef DEBUG_PRINT
    Serial.print("request: ");
    echoCommand(request);
    Serial.print("\n");
    #endif

    // Let a hypothetical second command come in before clearing the read buffer.
    delay(REQUEST_TIMEOUT_MS);

    // If there are leftover bytes in the serial buffer, then
    // clear them. This will prevent sending extra error messages.
    // Once the computer receives the error message, it should wait before
    // sending another command. 
    while (Serial.available() > 0) {
      Serial.read();
    }

    // Don't process the request.
    return;
  }
  
  // If nothing went wrong, then go ahead and process the request.
  processRequest(request);
  monitorTemp();
}

void echoCommand(char *request) {
  Serial.write((const unsigned char *)request, 4);
  Serial.print(':');
}


////////////////////////////////////////////////////FLOW COMANDS ///////////////////////////////////////////////////
void processRequest(char* request) {
  ERROR_STATE status = OK;

  // used to test the connection. Report back our version number as a bitmask.
  if (cmdEqual(request, "PING")) {
    echoCommand(request);
    sendVersionInfo();
  }

  // get the temperature
  else if (cmdEqual(request, "TEMP")) {
    float localTemp = readTemp(&status);
    if (status != OK) {
      sendError(status);
      return;
    }
    echoCommand(request);
    sendFloat(localTemp);
    
  }

  // get whether the heater is on or off
  else if (cmdEqual(request, "HEAT")) {
    bool heaterEnabled = getHeater();
    echoCommand(request);
    sendInt((int) heaterEnabled);
  }

  // turn the heater on
  else if (cmdEqual(request, "HONN")) {
    //FOR TESTING ONLY
    //digitalWrite(PIN_HEATER, LOW);
    //Serial.print("HONN");
    setHeater(true);
    echoCommand(request);
    sendInt((int) true);
  }

  // turn the heater off
  else if (cmdEqual(request, "HOFF")) {
    //FOR TESTING ONLY
    // digitalWrite(PIN_HEATER, HIGH);
    //Serial.print("HOFF");
    setHeater(false);
    echoCommand(request);
    sendInt((int) false);
  }
  
  // Set Temp Level 
    else if (cmdEqual(request, "STL", 3)) {
    char* requestParam = &request[3];
    uint8_t tempLevel = getUint8(requestParam);

    setTempLevel(tempLevel);
    echoCommand(request);
    sendWaterControlState();
  }
  
  
  // turns the peristalticPumpOn 
 else if (cmdEqual(request, "PONN")) {
    digitalWrite(PIN_P_PUMP, LOW);
    echoCommand(request);

  }
  
  // turns the peristalticPumpOff 
 else if (cmdEqual(request, "POFF")) {
    digitalWrite(PIN_P_PUMP, HIGH);
    echoCommand(request);

 }
 
  // get the water flow
  else if (cmdEqual(request, "FLOW")) {
    float flow = readFlow();
    echoCommand(request);
    //turn off if python heating is working!
    //hardTemp();
    sendFloat(flow);
  }


  // get water control state
  else if (cmdEqual(request, "WCST")) {
    echoCommand(request);
    sendWaterControlState();
  }


  // set pump level to the requested byte. 0 means off.
  
  else if (cmdEqual(request, "SPL", 3)) {
    char* requestParam = &request[3];
    uint8_t pumpLevel = getUint8(requestParam);

    setPumpLevel(pumpLevel);
    echoCommand(request);
    sendWaterControlState();
  }


   // set light level to the requested byte. 0 means off.
  else if (cmdEqual(request, "SLL", 3)) {
    char* requestParam = &request[3];
    uint8_t lightLevel = getUint8(requestParam);

    setLightLevel(lightLevel);
    echoCommand(request);
    //sendLightControlState();
  }
  
///////////////////////////////////////// STEPPER COMANDS ///////////////////////////////////////////////////////////
  // get homing switch state
  else if (cmdEqual(request, "SWHM")) {
    echoCommand(request);
    sendInt(digitalRead(SWITCH_PINS[SWITCH_HOMING]));
  }

  // get the current position (in steps) for the stepper motor
  else if (cmdEqual(request, "NSTP")) {
    sendPosition();
  }

  // tare the stepper motor's current position (call this position 0)
  else if (cmdEqual(request, "ZERO")) {
    stepper.setCurrentPosition(0);
    sendPosition();
  }

  // get safety switch state
  else if (cmdEqual(request, "SWSF")) {
    echoCommand(request);
    sendInt(digitalRead(SWITCH_PINS[SWITCH_SAFETY]));
  }

  // get homing switch state
  else if (cmdEqual(request, "HOMD")) {
    echoCommand(request);
    sendInt(getIsHomed());
  }
  
  // run homing routine
  else if (cmdEqual(request, "HOME")) {
    status = runHoming();
    if (status != OK) {
      sendError(status);
      return;
    }
    sendPosition();
  }

  else if (cmdEqual(request, "CSFM")) {
    status = calculateStepsFromHome();
    if (status != OK) {
      sendError(status);
      return;
    }
    sendPosition();
  }

  // run stepper motor test in positive direction
  else if (cmdEqual(request, "TSTP")) {
    long newPosition = stepper.currentPosition() + 5000;
    status = moveSafelyToTarget(newPosition);
    if (status != OK) {
      sendError(status);
      return;
    }
    sendPosition();
  }

  // run stepper motor test in negative direction
  else if (cmdEqual(request, "TSTN")) {
    long newPosition = stepper.currentPosition() - 5000;
    status = moveSafelyToTarget(newPosition);
    if (status != OK) {
      sendError(status);
      return;
    }
    sendPosition();
  }

   // go one step
  else if (cmdEqual(request, "GOST")) {
    long newPosition = stepper.currentPosition() + 1;
    status = moveSafelyToTarget(newPosition);
    if (status != OK) {
      sendError(status);
      return;
    }
    sendPosition();
  }
////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  // This has to be at the end so that we can have other commands that start with ST.
  // Steps absolute (unsigned)
  else if (cmdEqual(request, "ST", 2)) {
    char* requestParam = &request[2];
    uint16_t target = getUint16(requestParam);
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
