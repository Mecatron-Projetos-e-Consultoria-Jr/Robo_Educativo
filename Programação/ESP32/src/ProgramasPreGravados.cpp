#include "ProgramasPreGravados.h"
#include "Arduino.h"
#include "Nextion.h"

NexProgressBar progress_bar = NexProgressBar(8, 3, "j1");
NexPage page7 = NexPage(7, 1, "p_programas");

int progressBarValue = 0;

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
    progressBarValue = 0;
    progress_bar.setValue(progressBarValue);
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
        progress_bar.setValue(progressBarValue + (100 / 5));
        progressBarValue = progressBarValue + (100 / 5);
    }
    digitalWrite(2, LOW);
    //digitalWrite(x, LOW);
    //digitalWrite(x, LOW);

    page7.show();
}

//Usar o sensor IR
void ProgramasPreGravados::prog_2()
{
    progressBarValue = 0;
    progress_bar.setValue(progressBarValue);

    page7.show();
}

//Usar o LDR
void ProgramasPreGravados::prog_3()
{
    progressBarValue = 0;
    progress_bar.setValue(progressBarValue);

    page7.show();
}

void ProgramasPreGravados::prog_4()
{
    progressBarValue = 0;
    progress_bar.setValue(progressBarValue);

    page7.show();
}

void ProgramasPreGravados::prog_5()
{
    progressBarValue = 0;
    progress_bar.setValue(progressBarValue);

    page7.show();
}

void ProgramasPreGravados::prog_6()
{
    progressBarValue = 0;
    progress_bar.setValue(progressBarValue);

    page7.show();
}

void ProgramasPreGravados::prog_7()
{
    progressBarValue = 0;
    progress_bar.setValue(progressBarValue);

    page7.show();
}

void ProgramasPreGravados::prog_8()
{
    progressBarValue = 0;
    progress_bar.setValue(progressBarValue);

    page7.show();
}
