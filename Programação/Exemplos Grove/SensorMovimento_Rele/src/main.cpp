#include <Arduino.h>

//Rele D4
//PIR sensor D8
#define pinRele 17
#define pinPIR 12

void setup() {
  Serial.begin(9600);
  pinMode(pinRele, OUTPUT);
  pinMode(pinPIR, INPUT);
}

int PIR = 0;
void loop() {
  PIR = digitalRead(pinPIR);

  if(PIR == 1){
    digitalWrite(pinRele, HIGH);
    Serial.println("Movimento!");
  }else{
    digitalWrite(pinRele, LOW);
    Serial.println("...");
  }
  
  delay(10);
}