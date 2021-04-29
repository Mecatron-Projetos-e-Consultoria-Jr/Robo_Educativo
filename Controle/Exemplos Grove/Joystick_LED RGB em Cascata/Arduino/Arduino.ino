#include <Arduino.h>
#include "Adafruit_NeoPixel.h"

//Joystick A0
//Led D8
//Pino Joystick
#define pinX 2
#define pinY 4

//Pinos led
#define pinLED 12 //Pino SIG da cascata de led
#define ledCount 10
Adafruit_NeoPixel strip(ledCount, pinLED, NEO_GRB + NEO_KHZ800);

void setup() {
  Serial.begin(9600);
  pinMode(pinX, INPUT);
  pinMode(pinY, INPUT);

  strip.setBrightness(100);
  strip.begin();
  strip.show();
}

int i_led = 0;
int red = 0;
int green = 0;
int blue = 0;

void loop() {
  int sensorValue1 = analogRead(pinX);
  int sensorValue2 = analogRead(pinY);

  //Valor de gatilho varia de sensor para sensor
  if(sensorValue1 < 300 && i_led < 10){
    strip.setPixelColor(i_led, red, green, blue);
    i_led++;
  }
  if(sensorValue1 > 800 && i_led > -1){
    strip.setPixelColor(i_led, 0, 0, 0);
    i_led--;
  }

  if(sensorValue2 > 3000){
    red = random(0, 200);
    green = random(0, 255);
    blue = random(0, 150);

    int i = 0;
    while(i <= i_led){
      strip.setPixelColor(i, red, green, blue);
      i++;
    }
    delay(500);
  }

  //Serial.println(sensorValue2);
  strip.show();
  delay(100);

}
