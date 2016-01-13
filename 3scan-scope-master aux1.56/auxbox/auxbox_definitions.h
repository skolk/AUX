#if (ARDUINO >= 100)
 #include "Arduino.h"
#else
 #include "WProgram.h"
#endif

//#define DEBUG_PRINT true // YOU MUST comment this out if we're in production.
//#define NO_SWITCHES_ATTACHED true // Comment this out if the limit switches are attached.

// PIN ASSIGNMENTS
#define PIN_pH A8

#define PIN_HALL_SENSOR 2

#define PIN_THERMO_DO 00
#define PIN_THERMO_CS 00
#define PIN_THERMO_CLK 00

#define PIN_PATH_NORMAL 00
#define PIN_PATH_CAPTURE 00
#define PIN_PATH_DIVERT 00


#define PIN_MOTOR_DIR 6
#define PIN_MOTOR_STEP 7
#define PIN_MS1 4
#define PIN_MS2 5

#define PIN_OPTICS_CS 8
#define PIN_PUMP_CS 9
#define PIN_DI 51
#define PIN_SCK 52


#define PIN_SERVO 00

// check these
#define PIN_SWITCH_SAFETY 38
#define PIN_SWITCH_HOMING 40

#define PIN_VALVE1_OPEN 00
#define PIN_VALVE1_CLOSE 00

#define PIN_VALVE2_OPEN 00
#define PIN_VALVE2_CLOSE 00

#define PIN_VALVE3_OPEN 00
#define PIN_VALVE3_CLOSE 00

#define PIN_SOLENOID 00

#define PIN_PUMP 22
#define PIN_P_PUMP 24
#define PIN_HEATER 26

// CAPTURE STATES
typedef int CAPTURE_STATE;
#define CAPTURE_OFF 0
#define CAPTURE_ON 1
#define CAPTURE_HOLD 2

// ERROR STATES
typedef int ERROR_STATE;

#define OK 0
#define ERROR_UNKNOWN_ERROR 1
#define ERROR_SAFETY_LIMIT 2
#define ERROR_HOMING_LIMIT 3
#define ERROR_MALFORMED_COMMAND 4
#define ERROR_OUT_OF_RANGE 5
#define ERROR_PATH_TIMEOUT 6
#define ERROR_PATH_INVALID 7
#define ERROR_TEMP_FAULT 8
#define ERROR_FLOW_INVALID 9

// REQUESTS
char request[4];
int requestIndex = 0;

#define REQUEST_LENGTH 5
#define END_LINE 10

#define COMMAND_TIMEOUT_MS 200