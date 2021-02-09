#define pin1 2
#define pin2 3
#define pin3 4
#define pin4 5
#define pin5 6
#define pin6 7

void setup() {
  pinMode(pin1, OUTPUT);
  pinMode(pin2, OUTPUT);
  pinMode(pin3, OUTPUT);
  pinMode(pin4, OUTPUT);
  pinMode(pin5, OUTPUT);
  pinMode(pin6, OUTPUT);

}

void loop() {

  for (int i = 0; i < 3; i++) {
    pinMode(pin1, LOW);
    pinMode(pin2, LOW);
    pinMode(pin3, LOW);
    pinMode(pin4, LOW);
    pinMode(pin5, LOW);
    pinMode(pin6, LOW);

    delay(1000);

    pinMode(pin1, HIGH);
    pinMode(pin2, LOW);
    pinMode(pin3, LOW);
    pinMode(pin4, LOW);
    pinMode(pin5, HIGH);
    pinMode(pin6, LOW);

    delay(1000);

    pinMode(pin1, LOW);
    pinMode(pin2, HIGH);
    pinMode(pin3, LOW);
    pinMode(pin4, LOW);
    pinMode(pin5, LOW);
    pinMode(pin6, HIGH);


    delay(1000);

    pinMode(pin1, LOW);
    pinMode(pin2, LOW);
    pinMode(pin3, HIGH);
    pinMode(pin4, HIGH);
    pinMode(pin5, LOW);
    pinMode(pin6, LOW);

    delay(1000);
  }

  pinMode(pin1, HIGH);
  pinMode(pin2, LOW);
  pinMode(pin3, LOW);
  pinMode(pin4, HIGH);
  pinMode(pin5, LOW);
  pinMode(pin6, LOW);

  delay(1000);

  pinMode(pin1, LOW);
  pinMode(pin2, HIGH);
  pinMode(pin3, LOW);
  pinMode(pin4, LOW);
  pinMode(pin5, LOW);
  pinMode(pin6, HIGH);

  delay(1000);

  pinMode(pin1, LOW);
  pinMode(pin2, LOW);
  pinMode(pin3, HIGH);
  pinMode(pin4, LOW);
  pinMode(pin5, HIGH);
  pinMode(pin6, LOW);

  delay(1000);
}
