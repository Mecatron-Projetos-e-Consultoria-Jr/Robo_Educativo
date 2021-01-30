#include "ProgramasPreGravados.h"
#include "Arduino.h"

ProgramasPreGravados::ProgramasPreGravados()
{
}

/* A ideia é que funcionem em um loop, ao apertar o botão de executar o programa o mesmo é executado
repetidamente; até que se aperte novamente o mesmo botão, então ele para*/

//Usar somente os leds da shield - semárforo
void ProgramasPreGravados::prog_1()
{
    pinMode(2, OUTPUT);
    //pinMode(x, OUTPUT);
    //pinMode(x, OUTPUT);

    for (int i = 0; i <= 5; i++)
    {

        delay(1000);

        digitalWrite(2, LOW);
        //digitalWrite(x, HIGH);
        //digitalWrite(x, LOW);

        delay(1000);

        digitalWrite(2, HIGH);
        //digitalWrite(x, LOW);
        //digitalWrite(x, HIGH);
    }
    digitalWrite(2, LOW);
    //digitalWrite(x, LOW);
    //digitalWrite(x, LOW);
}

//Usar o sensor IR
void ProgramasPreGravados::prog_2()
{
}

//Usar o LDR
void ProgramasPreGravados::prog_3()
{
}

void ProgramasPreGravados::prog_4()
{
}

void ProgramasPreGravados::prog_5()
{
}

void ProgramasPreGravados::prog_6()
{
}

void ProgramasPreGravados::prog_7()
{
}

void ProgramasPreGravados::prog_8()
{
}
