#include <OneWire.h>
#include "DallasTemperature.h"

OneWire _oneWire(PIN_TEMP_SENSOR);
DallasTemperature dt(&_oneWire);

//bool isTempSensorConnected(void);

int temperature;

DeviceAddress dtAddress = {0, 0, 0, 0, 0, 0, 0, 0};

void setupBathTemp() {
  pinMode(PIN_HEATER, OUTPUT);

  dt.begin();

  // If we can't find it or it returns corrupt data, then
  // decide we're not connected and give up.
  int numDevices = dt.getDeviceCount();
  if (numDevices != 1) {
    #ifdef DEBUG_PRINT
      Serial.print("No temperature sensors connected.\n");
     // digitalWrite(PIN_HEATER, HIGH);
    #endif
    return;
  }

  // DallasTemperature::getAddress takes a pointer to where it'll store the address,
  // followed by the highest address that it will look for. Let's make sure it searches
  // all of them.
  bool gotAddress = dt.getAddress(dtAddress, 0);
  if (! gotAddress) {
    #ifdef DEBUG_PRINT
      Serial.print("Couldn't get temperature sensor address.\n");
    #endif

    return;
  }

  #ifdef DEBUG_PRINT
    Serial.print("Got address.\n");
  #endif

  // This is much faster than the 12-bit default resolution.
  dt.setResolution(9);
  
  // We're gonna do the waiting manually.
  dt.setWaitForConversion(false);
  dt.setCheckForConversion(false);
  // Start the cycle of requests.
  // We have to request the temperature before reading it.
  dt.requestTemperatures();
}

float readTemp(ERROR_STATE *status) {

  // Create a blank array into which we'll read from the
  // temperature sensor's "scratchpad" set of registers.
  uint8_t scratchPlaid[9] = {0, 0, 0, 0, 0, 0, 0, 0, 0};

  // Populate `scratchPlaid` with the results of reading
  // from the sensor.
  dt.readScratchPad(dtAddress, scratchPlaid);

  // A 16-bit integer form of the temperature is given by
  // the first two bytes in the scratchpad, shifted.
  int16_t rawTemperature =
        (((int16_t) scratchPlaid[TEMP_MSB]) << 11) |
        (((int16_t) scratchPlaid[TEMP_LSB]) << 3);

  // Put in a request for the next time we read this.
  // This call tells the temperature sensor to start generating
  // its next reading. We call it from here so that readTemp()
  // doesn't block the arduino's main loop.
  dt.requestTemperatures();

  // A disconnected wire can cause it to report 0.
  if (rawTemperature == 0) {

    *status = ERROR_TEMP_FAULT;
    return -273.15;
  
  // The device will report 10880 if it restarted.
  } else if (rawTemperature == 10880) {

    *status = ERROR_TEMP_RESTART;
    return -273.15;
  
  // If the DallasTemperature library returns a special value,
  // then the device disconnected. 
  } else if (rawTemperature == DEVICE_DISCONNECTED_RAW) {
  
    *status = ERROR_TEMP_DISCONNECTED;
    return -273.15;
  
  }

  // Tc = Traw / 128
  temperature = (float)rawTemperature * 0.0078125;
  *status = OK;
  return temperature;
}
  /////testing #SK /////////////////////// HARD 30 SET !!! ///////
 // if (temperature > 30){
 //        digitalWrite(PIN_HEATER, HIGH);
 // }
//  else if (temperature < 30) {
 //     digitalWrite(PIN_HEATER, LOW);
//  }
  
  //return temperature;
//}

/// Set Temp Level
uint8_t tempSetPoint = 0;

void setTempLevel(uint8_t level) {
  tempSetPoint = level;
  bool tempOn = (level > 0);
  }
  
// if PIN_HEATER is HIGH then it's 'off'
  
void monitorTemp() {
    if (pumpSetPoint <= 0) {
      digitalWrite(PIN_HEATER, HIGH);
    }
    else if (temperature >= tempSetPoint){
         digitalWrite(PIN_HEATER, HIGH);
       }
    else if (temperature <= tempSetPoint) {
      digitalWrite(PIN_HEATER, LOW);
  }
}

bool heaterSetPoint = false;

void setHeater(bool enableHeater) {
  if (enableHeater) {
    digitalWrite(PIN_HEATER, LOW);
  } else {
    digitalWrite(PIN_HEATER, HIGH);
  }

  heaterSetPoint = enableHeater;
}

bool getHeater() {
  return heaterSetPoint;
}
