#include "Arduino.h"
#include "ProgramacaoManual.h"

#include "Nextion.h"

NexNumber linha = NexNumber(10, 4, "n0");
NexText sensor = NexText(10, 5, "t1");
NexText estado = NexText(10, 6, "t2");
NexText delayTxt = NexText(10, 7, "t3");
NexProgressBar progressBar = NexProgressBar(10, 3, "j1");

NexPage page = NexPage(3, 0, "p_prog_man");
char buffer3[100] = {0};

ProgramacaoManual::ProgramacaoManual()
{
    for (int i = 0; i < 45; i++)
    {
        for (int j = 0; j < 3; j++)
            matrix[i][j] = 0;
    }
}

void ProgramacaoManual::executar()
{
    pinMode(2, OUTPUT); //LED
    pinMode(4, OUTPUT); //Buzzer

    int linhasTotais = 0;
    while (matrix[linhasTotais][0] != 0)
    {
        linhasTotais++;
    }

    //Executa os comandos da matriz matrix
    int i = 0;
    int currentPBValue = 0;
    while (matrix[i][0] != 0)
    {
        if (matrix[i][0] == -1) //Comando -1 significa delay de x segundos
        {
            int cont = matrix[i][2] / 1000;
            for (int j = 0; j <= matrix[i][2] / 1000; j++)
            {
                itoa(cont, buffer3, 10);
                delayTxt.setText(buffer3);
                delay(1000);
                cont--;
            }
        }
        else
        {
            digitalWrite(matrix[i][0], matrix[i][2]); //matrix[i][0] = numero do pino, matrix[i][2] = HIGH/LOW

            linha.setValue(i);
            if (matrix[i][0] == 2)
            {
                sensor.setText("LED");
            }
            else
                sensor.setText("BUZZER");

            if (matrix[i][2] == 1)
            {
                estado.setText("Ligado");
            }
            else
                estado.setText("Desligado");
        }
        currentPBValue = currentPBValue + 100 / linhasTotais;
        progressBar.setValue(currentPBValue);

        i++;
    }
    progressBar.setValue(100);
    delay(500);
    page.show();
}
