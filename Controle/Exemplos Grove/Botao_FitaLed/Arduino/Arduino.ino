#include <Arduino.h>
#include "Adafruit_NeoPixel.h"

//Botao D4
//Led D8

#define pinBotaoL 17
#define pinBotaoB 16
#define pinLED 12 //Pino SIG da cascata de led
#define ledCount 10
Adafruit_NeoPixel strip(ledCount, pinLED, NEO_GRB + NEO_KHZ800);

void setup() {
  Serial.begin(9600);

  pinMode(pinBotaoL, OUTPUT);
  pinMode(pinBotaoB, INPUT);

  strip.setBrightness(100);
  strip.begin();
  strip.show();
}

int temp = 0;
int estadoLedB = 0;
int estadoBotao = 0;
int lasStateBotao = 1;
void loop() {
  //Led do botão fica piscando
  if((millis() - temp) > 500 && estadoBotao != 0){
    temp = millis();
    digitalWrite(pinBotaoL, estadoLedB);
    estadoLedB = !estadoLedB;
  }

  estadoBotao = digitalRead(pinBotaoB);
  if(estadoBotao == 0 && lasStateBotao != estadoBotao){
    //Desliga o led do botao
    digitalWrite(pinBotaoL, LOW);
    estadoLedB = LOW;

    int red = random(0, 255);
    int blue = random(0, 255);
    int green = random(0, 255);
    for(int i = 0; i < 11; i++){
      strip.setPixelColor(i, red, green, blue);
    }
  }
  if(estadoBotao == 1){
    for(int i = 0; i < 11; i++){
      strip.setPixelColor(i, 0, 0, 0);
    }
  }

  lasStateBotao = estadoBotao;

  strip.show();
  Serial.println(estadoBotao);

  delay(10);

  
}
