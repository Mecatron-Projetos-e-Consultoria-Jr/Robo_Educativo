#define pin1 1
#define pin2 2
#define pin3 3
#define pin4 4
#define pin5 5
#define pin6 6
#define pin7 7
#define pin8 8
#define pin9 9
#define pin10 10
#define pin11 11
#define pin12 12
#define pin13 13

void setup()
{
  pinMode(pin1, OUTPUT);
  pinMode(pin2, OUTPUT);
  pinMode(pin3, OUTPUT);
  pinMode(pin4, OUTPUT);
  pinMode(pin5, OUTPUT);
  pinMode(pin6, OUTPUT);
pinMode(pin7, OUTPUT);
  pinMode(pin8, OUTPUT);
  pinMode(pin9, OUTPUT);
  pinMode(pin10, OUTPUT);
  pinMode(pin11, OUTPUT);
  pinMode(pin12, OUTPUT);
  pinMode(pin13, OUTPUT);


  Serial.begin(9600);
}

void liga(int pin_liga, int pin_desliga){
  digitalWrite(pin_liga, HIGH);
  digitalWrite(pin_desliga, LOW);

  Serial.println("Led Ligado: " + pin_liga);
  delay(1000);
}

void loop()
{
  liga(pin1, pin13);
  liga(pin2, pin1);
  liga(pin3, pin2);
  liga(pin4, pin3);
  liga(pin5, pin4);
  liga(pin6, pin5);
  liga(pin7, pin6);
  liga(pin8, pin7);
  liga(pin9, pin8);
  liga(pin10, pin9);
  liga(pin11, pin10);
  liga(pin12, pin11);
  liga(pin13, pin12);
  
}
