#include <SPI.h>

int csPin = 9;
void setup()
{
  SPI.begin();
  pinMode(csPin, OUTPUT);
}

void loop()
{
  digitalWrite(csPin, LOW);
  SPI.transfer(0);
  SPI.transfer(128);
  delay(10);
  
    digitalWrite(csPin, HIGH);

}
  

