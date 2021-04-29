#include <Arduino.h>
#include "rgb_lcd.h"
#include <math.h>          

rgb_lcd lcd;
#define pinWater 26
#define pinMoisture 2
#define pinTempSensor 34
//Sensor de Agua D2
//Sensor de Temperatura A2
//Moisture Sensor A0

int B = 4275;            
int R0 = 100000;  

void setup(){
  pinMode(pinWater, INPUT);
  pinMode(pinMoisture, INPUT);
  lcd.begin(16, 2);
  Serial.begin(9600);
  lcd.print("Hey!");
}

boolean water;
void loop() {
  if(digitalRead(26) == 1){
    water = false;
  }else{
    water = true;
  }

  int a = map(analogRead(pinTempSensor), 0, 4095, 0, 1023);
  float R = 1023.0/a-1.0;
  R = R0*R; 
  float temperature = 1.0/(log(R/R0)/B+1/298.15)-273.15; 


  lcd.setCursor(0, 0);
  lcd.print("Agua:");
  lcd.setCursor(5, 0);
  lcd.print(water);
  lcd.setCursor(6, 0);
  lcd.print(";");
  lcd.setCursor(7, 0);
  lcd.print("Umid.:");
  lcd.setCursor(13, 0);
  lcd.print(map(analogRead(pinMoisture), 0, 4095, 0, 10));
  lcd.setCursor(0, 2);
  lcd.print("Temp.Relativa:");
  lcd.print(temperature);

  delay(100);
}
