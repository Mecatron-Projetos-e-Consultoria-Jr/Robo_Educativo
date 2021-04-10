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
  potVal = map(analogRead(pinPot), 0, 4095, 0, 99);
  lcd.print(potVal);
  delay(100);
  lcd.clear();
}