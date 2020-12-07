/*===========================================================================================================

  Configurações Nextion

  =============================================================================================================*/
//biblioteca para comunicação com o display NEXTION
#include "Nextion.h"

//buffer para armazenar dados string
char buffer[100] = {0}; //buffer para armazenar dados string
char buffer2[100] = {0}; //buffer auxiliar para armazenar dados string

//isPage0 para evitar que a ESP envie infos sem que a tela do gráfico esteja visível
bool isPage0 = false;
NexButton wf_page_menu = NexButton(0, 2, "b0");
NexButton wf_page_config = NexButton(2, 7, "b0");
NexButton wf_page_prog_man = NexButton(3, 12, "b0");
NexButton wf_page_p_programas = NexButton(7, 10, "b0");

NexButton wf_page_voltar = NexButton(1, 9, "b0");

//Programação Manual(pm)
int view;
int pos;
NexNumber view_linha = NexNumber(3, 10, "n0");
NexText view_sensor = NexText(3, 6, "t1");
NexText view_estado = NexText(3, 7, "t2");
NexButton view_btn_ant = NexButton(3, 8, "b4");
NexButton view_btn_prox = NexButton(3, 9, "b5");
NexButton view_apagar = NexButton(3, 11, "b6");

NexNumber pm_pino = NexNumber(4, 7, "n1");
NexNumber pm_estado = NexNumber(4, 12, "n2");
NexButton pm_btn_concluir_1 = NexButton(4, 10, "b5");

NexNumber pm_delay = NexNumber(6, 8, "n1");
NexButton pm_btn_concluir_3 = NexButton(6, 7, "b5");
NexButton pm_executar = NexButton(3, 17, "b11");

NexWaveform waveform = NexWaveform(1, 3, "s0");
NexNumber wf_pino = NexNumber(1, 6, "n0");
NexDSButton wf_bt_dig_ana = NexDSButton(1, 8, "bt0");
NexPage page0 = NexPage(0, 0, "p_menu");
//Nesse array, declaramos os objetos Nextion que terão interação de eventos touch
NexTouch *nex_listen_list[] =
{
  &wf_page_menu,
  &wf_page_config,
  &wf_page_prog_man,
  &wf_page_p_programas,
  &wf_page_voltar,
  &wf_bt_dig_ana,
  &pm_btn_concluir_1,
  &pm_btn_concluir_3,
  &pm_executar,
  &view_btn_ant,
  &view_btn_prox,
  &view_apagar,
  NULL
};

/*===========================================================================================================

  Configurações Programação Manual

  =============================================================================================================*/
//Matriz responsável por guardar as informações da programação

int prog_manual[45][3] = {
  //{Pino, OUTPUT(0)/INPUT(1), Estado}
  {0, 0, 0},
  {0, 0, 0},
  {0, 0, 0},
  {0, 0, 0},
  {0, 0, 0},
  {0, 0, 0},
  {0, 0, 0},
  {0, 0, 0},
  {0, 0, 0},
  {0, 0, 0},
  {0, 0, 0},
  {0, 0, 0},
  {0, 0, 0},
  {0, 0, 0},
  {0, 0, 0},
  {0, 0, 0},
  {0, 0, 0},
  {0, 0, 0},
  {0, 0, 0},
  {0, 0, 0},
  {0, 0, 0},
  {0, 0, 0},
  {0, 0, 0},
  {0, 0, 0},
  {0, 0, 0},
  {0, 0, 0},
  {0, 0, 0},
  {0, 0, 0},
  {0, 0, 0},
  {0, 0, 0},
  {0, 0, 0},
  {0, 0, 0},
  {0, 0, 0},
  {0, 0, 0},
  {0, 0, 0},
  {0, 0, 0},
  {0, 0, 0},
  {0, 0, 0},
  {0, 0, 0},
  {0, 0, 0},
  {0, 0, 0},
  {0, 0, 0},
  {0, 0, 0},
  {0, 0, 0},
  {0, 0, 0}
};


void programacao_manual() {
  pinMode(2, OUTPUT);//LED
  pinMode(4, OUTPUT);//Buzzer

  //Executa os comandos da matriz prog_manual
  int i = 0;
  while (prog_manual[i][0] != 0) {
    if (prog_manual[i][0] == -1) {
      delay(prog_manual[i][2]);
    } else {
      digitalWrite(prog_manual[i][0], prog_manual[i][2]);
    }
    i++;
  }
}

/*===========================================================================================================

  Comandos Nextion

  =============================================================================================================*/
//Botões para saber quando a waveform deve ser ligada
void wf_page_menuPushCallback(void *ptr) {
  isPage0 = true;
}
void wf_page_configPushCallback(void *ptr) {
  isPage0 = true;
}
void wf_page_prog_manPushCallback(void *ptr) {
  isPage0 = true;
}
void wf_page_p_programasPushCallback(void *ptr) {
  isPage0 = true;
}
void wf_page_voltarPushCallback(void *ptr) {
  page0.show();
  isPage0 = false;
}

//Vizualizar as linhas da programação manual
void view_btn_antPopCallback(void *ptr) {
  if (view >= 1) {
    view--;

    memset(buffer, 0, sizeof(buffer));
    memset(buffer2, 0, sizeof(buffer2));

    itoa(prog_manual[view][0], buffer, 10);
    view_sensor.setText(buffer);
    itoa(prog_manual[view][2], buffer2, 10);
    view_estado.setText(buffer2);

    view_linha.setValue(view);
  }
}

void view_btn_proxPopCallback(void *ptr) {
  if (view <= 44) {
    view++;

    memset(buffer, 0, sizeof(buffer));
    memset(buffer2, 0, sizeof(buffer2));

    itoa(prog_manual[view][0], buffer, 10);
    view_sensor.setText(buffer);
    itoa(prog_manual[view][2], buffer2, 10);
    view_estado.setText(buffer2);

    view_linha.setValue(view);
  }
}
void view_apagarPushCallback(void *ptr) {
  pos--;
  prog_manual[pos][0] = 0;
  prog_manual[pos][1] = 0;
  prog_manual[pos][2] = 0;
}

//Comando para gravar a linha de código na matriz "programação manual"
void pm_btn_concluir_1PushCallback(void *ptr) {
  uint32_t aux1, aux2;
  pm_pino.getValue(&aux1);
  pm_estado.getValue(&aux2);

  prog_manual[pos][0] = aux1;
  prog_manual[pos][1] = 0;
  prog_manual[pos][2] = aux2;

  pos++;
}

void pm_btn_concluir_3PushCallback(void *ptr) {
  uint32_t aux1;
  pm_delay.getValue(&aux1);

  prog_manual[pos][0] = -1;
  prog_manual[pos][1] = 0;
  prog_manual[pos][2] = aux1 * 1000;//Converte de mili para segundos

  pos++;
}

void pm_executarPushCallBack(void *ptr) {
  programacao_manual();
}
/*===========================================================================================================

  Waveform

  =============================================================================================================*/
//Configurações Waveform
uint32_t pin_waveform;
byte val_waveform;
uint32_t val_bt_dig_ana;

void atualiza_waveform() {
  wf_pino.getValue(&pin_waveform);
  wf_bt_dig_ana.getValue(&val_bt_dig_ana);

  //Se a porta selecionada for digital
  if (val_bt_dig_ana == 1) {
    //val_waveform = digitalRead(5) * 10;
    switch (pin_waveform) {
      case 1:
        val_waveform = digitalRead(1) * 10;
        break;
      case 2:
        val_waveform = digitalRead(2) * 10;
        break;
      case 3:
        val_waveform = digitalRead(5) * 10;
        break;
      case 4:
        val_waveform = digitalRead(18) * 10;
        break;
      case 5:
        val_waveform = digitalRead(5) * 10;
        break;
      case 6:
        val_waveform = digitalRead(6) * 10;
        break;
      case 7:
        val_waveform = digitalRead(7) * 10;
        break;
      case 8:
        val_waveform = digitalRead(8) * 10;
        break;
    }
  }
  if (val_bt_dig_ana == 0) {
    //val_waveform = map(analogRead(33), 0, 4095, 0, 15);
    switch (pin_waveform) {
      case 1:
        val_waveform = map(analogRead(1), 0, 4095, 0, 15);
        break;
      case 2:
        val_waveform = map(analogRead(2), 0, 4095, 0, 15);
        break;
      case 3:
        val_waveform = map(analogRead(33), 0, 4095, 0, 15);
        break;
      case 4:
        val_waveform = map(analogRead(4), 0, 4095, 0, 15);
        break;
      case 5:
        val_waveform = map(analogRead(5), 0, 4095, 0, 15);
        break;
      case 6:
        val_waveform = map(analogRead(6), 0, 4095, 0, 15);
        break;
      case 7:
        val_waveform = map(analogRead(7), 0, 4095, 0, 15);
        break;
      case 8:
        val_waveform = map(analogRead(33), 0, 4095, 0, 15);
        break;
    }
  }
  waveform.addValue(0, val_waveform);
}
/*===========================================================================================================

  Setup

  =============================================================================================================*/
void setup() {
  view = 0;
  pos = 0;
  //inicializa a comunicação com o nextion
  nexInit();

  pm_btn_concluir_1.attachPush(pm_btn_concluir_1PushCallback);
  pm_btn_concluir_3.attachPush(pm_btn_concluir_3PushCallback);
  pm_executar.attachPush(pm_executarPushCallBack);

  view_btn_ant.attachPop(view_btn_antPopCallback);
  view_btn_prox.attachPop(view_btn_proxPopCallback);
  view_apagar.attachPush(view_apagarPushCallback);

  wf_page_menu.attachPush(wf_page_menuPushCallback);
  wf_page_config.attachPush(wf_page_configPushCallback);
  wf_page_prog_man.attachPush(wf_page_prog_manPushCallback);
  wf_page_p_programas.attachPush(wf_page_p_programasPushCallback);
  wf_page_voltar.attachPush(wf_page_voltarPushCallback);
}
/*===========================================================================================================

  Loop

  =============================================================================================================*/
void loop() {
  //essa função trabalha como um listener para os eventos de press e release dos objetos utilizados no NEXTION
  nexLoop(nex_listen_list);

  //Chama a função para escrever na waveform
  if (isPage0 == true) {
    atualiza_waveform();
    delay(20);
  }
}
