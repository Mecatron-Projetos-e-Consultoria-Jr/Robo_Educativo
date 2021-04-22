#include <Arduino.h>

//Led_1 D4
//Led_2 D8
//Sensor PIR D3
#define pinPir 25
#define pinLed1 17
#define pinLed2 12

void setup() {
  Serial.begin(9600);

  pinMode(pinPir, INPUT);
  pinMode(pinLed1, OUTPUT);
  pinMode(pinLed2, OUTPUT);
}

int pirRead;
void loop() {
  pirRead = digitalRead(pinPir);
  Serial.println(pirRead);

  if(pirRead == 1){
    digitalWrite(pinLed1, HIGH);

    for(int i = 0; i < 5; i++){
      digitalWrite(pinLed2, HIGH);
      delay(100);
      digitalWrite(pinLed2, LOW);
      delay(100);
    }
    digitalWrite(pinLed1, LOW);
  }
}
