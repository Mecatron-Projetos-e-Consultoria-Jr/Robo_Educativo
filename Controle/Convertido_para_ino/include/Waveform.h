#ifndef WAVEFORM_H
#define WAVEFORM_H

#include "Arduino.h"

class Waveform
{
public:
    Waveform(uint32_t pinWaveform, uint32_t val_bt_dig_ana, byte valWaveform);
    byte atualizar();

private:
    uint32_t _pinWaveform;    //Pino a ser lido
    uint32_t _val_bt_dig_ana; //Leitura analógica ou digital?

    byte _valWaveform; //O valor repassado para a waveform apos a conversão
};
#endif