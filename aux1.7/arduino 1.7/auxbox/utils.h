#if (ARDUINO >= 100)
#include "Arduino.h"
#else
#include "WProgram.h"
#endif

byte getUnsignedInt(char*);
boolean cmdEqual(char*, char*);
void sendBytes(unsigned char*, int);
void sendFloat(float);
void sendInt(long);
void sendError(ERROR_STATE);

uint8_t getUint8(char* command) {
  return (uint8_t)((unsigned char)command[0]);
}

uint16_t getUint16(char* command) {
  return (uint16_t)(((unsigned char)command[1] << 8) | (unsigned char)command[0]);
}

void sendBytes(unsigned char* bytes, int numBytes = 4) {
  Serial.write(bytes, numBytes);
  Serial.print('\n');
}

#ifdef DEBUG_PRINT
void sendFloat(float f) {
  Serial.print(f);
  Serial.print('\n');
}
void sendInt(long i) {
  Serial.print(i);
  Serial.print('\n');
}
#else
void sendFloat(float f) {
  unsigned char *bytes = (unsigned char *) &f;
  sendBytes(bytes);
}
void sendInt(long i) {
  unsigned char *bytes = (unsigned char *) &i;
  sendBytes(bytes);
}
#endif

void sendError(ERROR_STATE errNum = ERROR_UNKNOWN_ERROR) {
  Serial.print("ERRR:");
  sendInt(errNum);
}

void sendVersionInfo() {
  unsigned long bitMask = 0;

  bitMask |= (((unsigned long)VERSION_MAJOR) << 16);
  bitMask |= (((unsigned long)VERSION_MINOR) << 8);
  bitMask |= (((unsigned long)VERSION_PATCH) << 0);
  sendInt(bitMask);
}

// This is a no-op unless we're in debug mode.
void _dbPrintStartTime(long start=0) {
#ifdef DEBUG_PRINT

  long elapsed = millis() - start;
  Serial.print("Start time (ms): ");
  Serial.print(elapsed, DEC);
  Serial.print("\n");

#endif
}

