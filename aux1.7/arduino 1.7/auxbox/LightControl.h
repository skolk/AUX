void setLightLevel(uint8_t);
int lightLevel = 0;

void setupLightControl() {
  pinMode(PIN_OPTICS_CS, OUTPUT);
  digitalWrite(PIN_OPTICS_CS, HIGH);
  setLightLevel(0);
}


uint8_t lightSetPoint = 0;
void setLightLevel(uint8_t level) {
  digitalWrite(PIN_OPTICS_CS, LOW);
  SPI.transfer(0);
  SPI.transfer(level);
  delay(10);
  digitalWrite(PIN_OPTICS_CS, HIGH);

  lightSetPoint = level;
}



