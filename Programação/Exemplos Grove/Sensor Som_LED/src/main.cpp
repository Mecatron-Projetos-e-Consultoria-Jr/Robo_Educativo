#include <Arduino.h>

//Sensor de som A0
//Led D4

#define pinSom 2
#define pinLed 17
void setup() {
  pinMode(pinSom, INPUT);
  pinMode(pinLed, OUTPUT);

  digitalWrite(pinLed, LOW);
}

int som = 0;
int estadoLed = 0;
void loop() {
  som = analogRead(pinSom);
  
  if(som > 500){
    digitalWrite(pinLed, !estadoLed);
    estadoLed = !estadoLed;
    delay(200);
  }

  delay(10);
}