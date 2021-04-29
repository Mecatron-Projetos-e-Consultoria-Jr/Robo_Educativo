#include <Arduino.h>
#include "Wire.h"
#include "rgb_lcd.h"

//LCD qualquer pino I2C
//Potencimetro A0
#define pinPot 2

rgb_lcd lcd;
int red = 255;
int green = 0;
int blue = 0;

void setup() {
  lcd.begin(16, 2);
  lcd.setRGB(red, green, blue);
  lcd.print("Oi =)");
  delay(2000);
  pinMode(pinPot, INPUT);
}

int potVal = 0;
void loop() {
  lcd.print("Potenciometro");
  lcd.setCursor(0, 1);
  potVal = map(analo#include <Arduino.h>

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
}gRead(pinPot), 0, 4095, 0, 99);
  lcd.print(potVal);
  delay(100);
  lcd.clear();
}
