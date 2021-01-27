#include "Arduino.h"
#include "ProgramacaoManual.h"

ProgramacaoManual::ProgramacaoManual()
{
    for (int i = 0; i < 45; i++)
    {
        for (int j = 0; j < 3; j++)
            matrix[i][j] = i;
    }
}

void ProgramacaoManual::executar(int a)
{
    pinMode(2, OUTPUT); //LED
    pinMode(4, OUTPUT); //Buzzer

    //Executa os comandos da matriz matrix
    int i = 0;
    while (matrix[i][0] != 0)
    {
        if (matrix[i][0] == -1)
        {
            delay(matrix[i][2]);
        }
        else
        {
            digitalWrite(matrix[i][0], matrix[i][2]);
        }
        i++;
    }
}
//todo (Re)Desabilita o rabisco de erro
