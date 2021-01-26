#include "Arduino.h"
#include "Waveform.h"

Waveform::Waveform(uint32_t pinWaveform, uint32_t val_bt_dig_ana, byte valWaveform)
{
    _pinWaveform = pinWaveform;
    _val_bt_dig_ana = val_bt_dig_ana;
    _valWaveform = valWaveform;
}

byte Waveform::atualizar()
{
    //Se a porta selecionada for digital
    if (_val_bt_dig_ana == 1)
    {
        //val_waveform = digitalRead(5) * 10;
        switch (_pinWaveform)
        {
        case 1:
            return _valWaveform = digitalRead(1) * 10;
            break;
        case 2:
            return _valWaveform = digitalRead(2) * 10;
            break;
        case 3:
            return _valWaveform = digitalRead(5) * 10;
            break;
        case 4:
            return _valWaveform = digitalRead(18) * 10;
            break;
        case 5:
            return _valWaveform = digitalRead(5) * 10;
            break;
        case 6:
            return _valWaveform = digitalRead(6) * 10;
            break;
        case 7:
            return _valWaveform = digitalRead(7) * 10;
            break;
        case 8:
            return _valWaveform = digitalRead(8) * 10;
            break;
        }
    }
    if (_val_bt_dig_ana == 0)
    {
        //val_waveform = map(analogRead(33), 0, 4095, 0, 15);
        switch (_pinWaveform)
        {
        case 1:
            return _valWaveform = map(analogRead(1), 0, 4095, 0, 15);
            break;
        case 2:
            return _valWaveform = map(analogRead(2), 0, 4095, 0, 15);
            break;
        case 3:
            return _valWaveform = map(analogRead(33), 0, 4095, 0, 15);
            break;
        case 4:
            return _valWaveform = map(analogRead(4), 0, 4095, 0, 15);
            break;
        case 5:
            return _valWaveform = map(analogRead(5), 0, 4095, 0, 15);
            break;
        case 6:
            return _valWaveform = map(analogRead(6), 0, 4095, 0, 15);
            break;
        case 7:
            return _valWaveform = map(analogRead(7), 0, 4095, 0, 15);
            break;
        case 8:
            return _valWaveform = map(analogRead(33), 0, 4095, 0, 15);
            break;
        }
    }
}
