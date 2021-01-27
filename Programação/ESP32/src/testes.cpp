#include "ProgramacaoManual.h"

void setup()
{
    Serial.begin(115200);
}

ProgramacaoManual pm;
void loop()
{
    Serial.println(pm.matrix[0][0]);
    delay(500);
    pm.matrix[0][0] = 50;
    Serial.println(pm.matrix[0][0]);
}