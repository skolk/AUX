#include <SPI.h>

int csPin = 10;
void setup()
{
  SPI.begin();
  pinMode(csPin, OUTPUT);
}

void loop()
{
  digitalWrite(csPin, LOW);
  for(int i = 0; i <=128; i++)
  {
  SPI.transfer(0);
  SPI.transfer(i);
  delay(10);
  }
 for(int i = 128; i >=0; i--)
  {
  
  SPI.transfer(0);
  SPI.transfer(i);
  delay(10);
  }
    digitalWrite(csPin, HIGH);

}
  
