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

// convert target from bytes to int
byte getUnsignedInt(char* command) {
  byte* cmd = (byte*) command;
  unsigned int nsteps =  cmd[0] | (cmd[1] << 8);
  return nsteps;
}

void sendBytes(unsigned char* bytes, int numBytes=4) {
  int numBytesWritten = Serial.write(bytes, numBytes);
  if (numBytesWritten != numBytes) {
    // Note: potential infinite recursion
    sendError(ERROR_UNKNOWN_ERROR);
    return;
  }
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
