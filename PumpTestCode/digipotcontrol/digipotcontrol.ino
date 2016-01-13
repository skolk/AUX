#include <SPI.h>
byte address = 0x11;
int CS= 9;
int i=0;

void setup()
{
  pinMode (CS, OUTPUT);
  SPI.begin();
}

void loop()
{
    for (i = 0; i <= 128; i++)
    {
      digitalPotIncrement();
      delay(10);
    }
    delay(500);
    for (i = 128; i >= 0; i--)
    {
      digitalPotDecrement();
      delay(10);
    }
}

void digitalPotIncrement()
{
  digitalWrite(CS, LOW);
  SPI.transfer(0x04);
  digitalWrite(CS, HIGH);
}

void digitalPotDecrement()
{
  digitalWrite(CS, LOW);
  SPI.transfer(0x08);
  digitalWrite(CS, HIGH);
}
