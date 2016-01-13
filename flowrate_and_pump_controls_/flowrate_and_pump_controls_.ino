#include <OneWire.h>

volatile int NbTopsFan; //measuring the rising edges of the signal
OneWire  ds(10);   
int Calc ;                               
int hallsensor = 2;   
int enA = 11;
int in1 = 31;
int in2 = 33;
// motor two
int enB = 12;
int in3 = 35;
int in4 = 37;
int heater = 26;


void demoOne()
{
  // this function will run the motors in both directions at a fixed speed
  // turn on motor A
  digitalWrite(in1, LOW );
  digitalWrite(in2, HIGH);
  // set speed to 200 out of possible range 0~255
  // P pump - 5v
  // set at 170
 
 analogWrite(enA, 170);

  // turn on motor
  digitalWrite(in3, LOW);
  digitalWrite(in4, HIGH);
 
  // set speed to 200 out of possible range 0~255
  // pump pump! 
  // set aprox 100 - 255
  analogWrite(enB, 100);
  
  digitalWrite(heater, LOW);
  delay(2000);
  
}

void rpm ()     //This is the function that the interupt calls 
{ 
 NbTopsFan++;  //This function measures the rising and falling edge of the hall effect sensors signal
} 
// The setup() method runs once, when the sketch starts
void setup() 
{ 
    // set all the motor control pins to outputs
  pinMode(enA, OUTPUT);
  pinMode(enB, OUTPUT);
  pinMode(in1, OUTPUT);
  pinMode(in2, OUTPUT);
  pinMode(in3, OUTPUT);
  pinMode(in4, OUTPUT);
  pinMode(heater, OUTPUT);
 pinMode(hallsensor, INPUT); //initializes digital pin 2 as an input
 Serial.begin(9600); //This is the setup function where the serial port is initialised,
 attachInterrupt(0, rpm, RISING); 
 //and the interrupt is attached
} 
// the loop() method runs over and over again,
// as long as the Arduino has power
void loop ()    
{
 demoOne();
 NbTopsFan = 0;      //Set NbTops to 0 ready for calculations
 sei();            //Enables interrupts
 delay (1000);      //Wait 1 second
 cli();            //Disable interrupts
 Calc = (NbTopsFan * 60 / 7.5 / 60); //(Pulse frequency x 60) / 7.5Q, = flow rate in L/hour 
 Serial.print (Calc, DEC); //Prints the number calculated above
 Serial.print (" L/min\r\n"); //Prints "L/hour" and returns a  new line
 
 byte i;
  byte present = 0;
  byte type_s;
  byte data[12];
  byte addr[8];
  float celsius, fahrenheit;
  
  if ( !ds.search(addr)) {
    Serial.println("No more addresses.");
    Serial.println();
    ds.reset_search();
    delay(250);
    return;
  }
  
  Serial.print("ROM =");
  for( i = 0; i < 8; i++) {
    Serial.write(' ');
    Serial.print(addr[i], HEX);
  }
if (OneWire::crc8(addr, 7) != addr[7]) {
      Serial.println("CRC is not valid!");
      return;
  }
  Serial.println();
   switch (addr[0]) {
    case 0x10:
      Serial.println("  Chip = DS18S20");  // or old DS1820
      type_s = 1;
      break;
    case 0x28:
      Serial.println("  Chip = DS18B20");
      type_s = 0;
      break;
    case 0x22:
      Serial.println("  Chip = DS1822");
      type_s = 0;
      break;
    default:
      Serial.println("Device is not a DS18x20 family device.");
      return;
  } 

  ds.reset();
  ds.select(addr);
  ds.write(0x44, 1);        // start conversion, with parasite power on at the end
  
  delay(1000);     // maybe 750ms is enough, maybe not
  // we might do a ds.depower() here, but the reset will take care of it.
  
  present = ds.reset();
  ds.select(addr);    
  ds.write(0xBE);         // Read Scratchpad

  Serial.print("  Data = ");
  Serial.print(present, HEX);
  Serial.print(" ");
  for ( i = 0; i < 9; i++) {           // we need 9 bytes
    data[i] = ds.read();
    Serial.print(data[i], HEX);
    Serial.print(" ");
  }
  Serial.print(" CRC=");
  Serial.print(OneWire::crc8(data, 8), HEX);
  Serial.println();
  int16_t raw = (data[1] << 8) | data[0];
  if (type_s) {
    raw = raw << 3; // 9 bit resolution default
    if (data[7] == 0x10) {
      raw = (raw & 0xFFF0) + 12 - data[6];
    }
  } else {
    byte cfg = (data[4] & 0x60);
    if (cfg == 0x00) raw = raw & ~7;  // 9 bit resolution, 93.75 ms
    else if (cfg == 0x20) raw = raw & ~3; // 10 bit res, 187.5 ms
    else if (cfg == 0x40) raw = raw & ~1; // 11 bit res, 375 ms
  }
  celsius = (float)raw / 16.0;
  fahrenheit = celsius * 1.8 + 32.0;
  Serial.print("  Temperature = ");
  Serial.print(celsius);
  Serial.print(" Celsius, ");
  Serial.print(fahrenheit);
  Serial.println(" Fahrenheit");
}


