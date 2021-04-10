#include <Arduino.h>
#include "Adafruit_NeoPixel.h"

//Pinos led
#define pinLED 12 //Pino SIG da cascata de led
#define ledCount 10
Adafruit_NeoPixel strip(ledCount, pinLED, NEO_GRB + NEO_KHZ800);

#define pinSom 2
#define pinLoud 34

void setup() {
  Serial.begin(9600);
  pinMode(pinSom, INPUT);
  pinMode(pinLoud, INPUT);

  strip.setBrightness(100);
  strip.begin();
  strip.show();
}

//Armazenam os valores lidos
int sensorSom = 0;
int sensorLoud = 0;

int red = random(0, 255);
int green = random(0, 255);
int blue = random(0, 255);
  
//Intervalo/frequencia dos leds
int tempo = 30;

int timerVel = 0;
int timerDesligar = 0;

void liga_led(){
  int i = 0;
  //Liga os leds
  i = 0;
  while (i <= 10)
  {
    strip.setPixelColor(i, red, green, blue);
    i++;
    delay(tempo);
    strip.show();
  }
}

void loop() {
  sensorLoud = analogRead(pinLoud)/10;
  sensorSom = analogRead(pinSom)/10;

  //Controle do led-----------------------------------------------------------------
  //Quantidade de leds acessos
  if(sensorSom > 60){
    red = random(0, 255);
    green = random(0, 255);
    blue = random(0, 255); 
    liga_led();

    timerDesligar = millis();
  }

  if(millis() - timerDesligar > 1000){
    int i = 0;
    //Desliga os leds
    i = 0;
    while (i <= 10)
    {
      strip.setPixelColor(i, 0, 0, 0);
      i++;
      delay(10);
      strip.show();
    }
  }

  //Muda a cor
  if(sensorSom > 50){//Regular a condição para entrar
    tempo = 15;
    timerVel = millis();
  }

  if(millis() - timerVel > 150){
    tempo = 30;
    timerVel = millis();
  }




  Serial.print(sensorSom);
  Serial.print(" ");
  Serial.print(sensorLoud);
  Serial.print(" Tempo: ");
  Serial.print(tempo);

  Serial.println();
  if(sensorSom > 60)
    Serial.println("!");
  
  
  




}