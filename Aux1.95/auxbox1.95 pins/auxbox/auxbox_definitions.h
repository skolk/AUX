///for aux1.95
#if (ARDUINO >= 100)
 #include "Arduino.h"
#else
 #include "WProgram.h"
#endif

//#define DEBUG_PRINT true // YOU MUST comment this out if we're in production.
 #define NO_SWITCHES_ATTACHED true // Comment this out if the limit switches are attached.

#define VERSION_MAJOR 1
#define VERSION_MINOR 5
#define VERSION_PATCH 0

// PIN ASSIGNMENTS
#define PIN_PH A0
#define PIN_TEMP_SENSOR 10


// Stepper motor pins
#define PIN_MOTOR_DIR 7
#define PIN_MOTOR_STEP 6
// Microstepping pins. Low means on.
#define PIN_MS1 4
#define PIN_MS2 5
#define PIN_MS3 3
//Define micro-stepping mode for switch statement below
#define FULL_STEP 110
#define HALF_STEP 120
#define QUARTER_STEP 130
#define EIGHTH_STEP 140
// test 
// SPI pins
#define PIN_OPTICS_CS 42
#define PIN_PUMP_CS 44
#define PIN_DI 51
#define PIN_SCK 52

// CHECK THESE
#define PIN_SWITCH_SAFETY 40
#define PIN_SWITCH_HOMING 38

// Relay Switches (low means on)
#define PIN_P_PUMP 48  // persistaltic pump
#define PIN_HEATER 46 // now the relay for the band heater 

float distancePerStep = 0.0015; // mm per step

// ERROR STATES
typedef long ERROR_STATE;

#define OK 0L
#define ERROR_UNKNOWN_ERROR 1L
#define ERROR_MALFORMED_COMMAND 2L
#define ERROR_SAFETY_LIMIT 3L
#define ERROR_HOMING_LIMIT 4L
#define ERROR_OUT_OF_RANGE 5L
#define ERROR_TEMP_DISCONNECTED 6L
#define ERROR_TEMP_FAULT 7L
#define ERROR_TEMP_RESTART 8L
