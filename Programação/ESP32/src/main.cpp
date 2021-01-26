/*===========================================================================================================

  Configurações Upload OTA

  =============================================================================================================*/
/*  Programa para ESP32 antes da atualização OTA */
#include <WiFi.h>
#include <WiFiClient.h>
#include <WebServer.h>
#include <ESPmDNS.h>
#include <Update.h>

/* Constantes - conexão wi-fi e webserver */
const char *host = "esp32";
const char *ssid = "NET_C10D75";        /* coloque aqui o nome da rede wi-fi que o ESP32 deve se conectar */
const char *password = "RKtg/-O571eo,"; /* coloque aqui a senha da rede wi-fi que o ESP32 deve se conectar */

/* Variáveis globais */
int contador_ms = 0;

/* Webserver para se comunicar via browser com ESP32  */
WebServer server(80);

/* Códigos da página que será aberta no browser
   (quando comunicar via browser com o ESP32)
   Esta página exigirá um login e senha, de modo que somente
   quem tenha estas informações consiga atualizar o firmware
   do ESP32 de forma OTA */
const char *loginIndex =
    "<form name='loginForm'>"
    "<table width='20%' bgcolor='A09F9F' align='center'>"
    "<tr>"
    "<td colspan=2>"
    "<center><font size=4><b>ESP32 - identifique-se</b></font></center>"
    "<br>"
    "</td>"
    "<br>"
    "<br>"
    "</tr>"
    "<td>Login:</td>"
    "<td><input type='text' size=25 name='userid'><br></td>"
    "</tr>"
    "<br>"
    "<br>"
    "<tr>"
    "<td>Senha:</td>"
    "<td><input type='Password' size=25 name='pwd'><br></td>"
    "<br>"
    "<br>"
    "</tr>"
    "<tr>"
    "<td><input type='submit' onclick='check(this.form)' value='Identificar'></td>"
    "</tr>"
    "</table>"
    "</form>"
    "<script>"
    "function check(form)"
    "{"
    "if(form.userid.value=='admin' && form.pwd.value=='admin')"
    "{"
    "window.open('/serverIndex')"
    "}"
    "else"
    "{"
    " alert('Login ou senha inválidos')"
    "}"
    "}"
    "</script>";

const char *serverIndex =
    "<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>"
    "<form method='POST' action='#' enctype='multipart/form-data' id='upload_form'>"
    "<input type='file' name='update'>"
    "<input type='submit' value='Update'>"
    "</form>"
    "<div id='prg'>Progresso: 0%</div>"
    "<script>"
    "$('form').submit(function(e){"
    "e.preventDefault();"
    "var form = $('#upload_form')[0];"
    "var data = new FormData(form);"
    " $.ajax({"
    "url: '/update',"
    "type: 'POST',"
    "data: data,"
    "contentType: false,"
    "processData:false,"
    "xhr: function() {"
    "var xhr = new window.XMLHttpRequest();"
    "xhr.upload.addEventListener('progress', function(evt) {"
    "if (evt.lengthComputable) {"
    "var per = evt.loaded / evt.total;"
    "$('#prg').html('Progresso: ' + Math.round(per*100) + '%');"
    "}"
    "}, false);"
    "return xhr;"
    "},"
    "success:function(d, s) {"
    "console.log('Sucesso!')"
    "},"
    "error: function (a, b, c) {"
    "}"
    "});"
    "});"
    "</script>";
/*===========================================================================================================

  Configurações Nextion

  =============================================================================================================*/
//biblioteca para comunicação com o display NEXTION
#include "Nextion.h"

//buffer para armazenar dados string
char buffer[100] = {0};  //buffer para armazenar dados string
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
        NULL};

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
    {0, 0, 0}};

void programacao_manual()
{
  pinMode(2, OUTPUT); //LED
  pinMode(4, OUTPUT); //Buzzer

  //Executa os comandos da matriz prog_manual
  int i = 0;
  while (prog_manual[i][0] != 0)
  {
    if (prog_manual[i][0] == -1)
    {
      delay(prog_manual[i][2]);
    }
    else
    {
      digitalWrite(prog_manual[i][0], prog_manual[i][2]);
    }
    i++;
  }
}

/*===========================================================================================================

  Comandos Nextion

  =============================================================================================================*/
//Botões para saber quando a waveform deve ser ligada
void wf_page_menuPushCallback(void *ptr)
{
  isPage0 = true;
}
void wf_page_configPushCallback(void *ptr)
{
  isPage0 = true;
}
void wf_page_prog_manPushCallback(void *ptr)
{
  isPage0 = true;
}
void wf_page_p_programasPushCallback(void *ptr)
{
  isPage0 = true;
}
void wf_page_voltarPushCallback(void *ptr)
{
  page0.show();
  isPage0 = false;
}

//Vizualizar as linhas da programação manual
void view_btn_antPopCallback(void *ptr)
{
  if (view >= 1)
  {
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

void view_btn_proxPopCallback(void *ptr)
{
  if (view <= 44)
  {
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
void view_apagarPushCallback(void *ptr)
{
  pos--;
  prog_manual[pos][0] = 0;
  prog_manual[pos][1] = 0;
  prog_manual[pos][2] = 0;
}

//Comando para gravar a linha de código na matriz "programação manual"
void pm_btn_concluir_1PushCallback(void *ptr)
{
  uint32_t aux1, aux2;
  pm_pino.getValue(&aux1);
  pm_estado.getValue(&aux2);

  prog_manual[pos][0] = aux1;
  prog_manual[pos][1] = 0;
  prog_manual[pos][2] = aux2;

  pos++;
}

void pm_btn_concluir_3PushCallback(void *ptr)
{
  uint32_t aux1;
  pm_delay.getValue(&aux1);

  prog_manual[pos][0] = -1;
  prog_manual[pos][1] = 0;
  prog_manual[pos][2] = aux1 * 1000; //Converte de mili para segundos

  pos++;
}

void pm_executarPushCallBack(void *ptr)
{
  programacao_manual();
}
/*===========================================================================================================

  Waveform - Nextion

  =============================================================================================================*/
//Configurações Waveform
#include "Waveform.h"
uint32_t pin_waveform;
byte val_waveform;
uint32_t val_bt_dig_ana;

void atualiza_waveform()
{
  wf_pino.getValue(&pin_waveform);
  wf_bt_dig_ana.getValue(&val_bt_dig_ana);
  Waveform wf(pin_waveform, val_waveform, val_waveform);

  waveform.addValue(0, wf.atualizar());
}
/*===========================================================================================================

  Setup

  =============================================================================================================*/
void setup()
{
  pinMode(5, INPUT_PULLUP); //Teste com a waveform
  /*===========================================================================================================

    Setup Upload OTA

    =============================================================================================================*/
  Serial.begin(115200);

  /* Conecta-se a rede wi-fi */
  WiFi.begin(ssid, password);
  Serial.println("");

  while (WiFi.status() != WL_CONNECTED)
  {
    delay(500);
    Serial.print(".");
  }

  Serial.println("");
  Serial.print("Conectado a rede wi-fi ");
  Serial.println(ssid);
  Serial.print("IP obtido: ");
  Serial.println(WiFi.localIP());

  /* Usa MDNS para resolver o DNS */
  if (!MDNS.begin(host))
  {
    //http://esp32.local
    Serial.println("Erro ao configurar mDNS. O ESP32 vai reiniciar em 1s...");
    delay(1000);
    ESP.restart();
  }

  Serial.println("mDNS configurado e inicializado;");

  /* Configfura as páginas de login e upload de firmware OTA */
  server.on("/", HTTP_GET, []() {
    server.sendHeader("Connection", "close");
    server.send(200, "text/html", loginIndex);
  });

  server.on("/serverIndex", HTTP_GET, []() {
    server.sendHeader("Connection", "close");
    server.send(200, "text/html", serverIndex);
  });

  /* Define tratamentos do update de firmware OTA */
  server.on(
      "/update", HTTP_POST, []() {
    server.sendHeader("Connection", "close");
    server.send(200, "text/plain", (Update.hasError()) ? "FAIL" : "OK");
    ESP.restart(); }, []() {
    HTTPUpload& upload = server.upload();

    if (upload.status == UPLOAD_FILE_START)
    {
      /* Inicio do upload de firmware OTA */
      Serial.printf("Update: %s\n", upload.filename.c_str());
      if (!Update.begin(UPDATE_SIZE_UNKNOWN))
        Update.printError(Serial);
    }
    else if (upload.status == UPLOAD_FILE_WRITE)
    {
      /* Escrevendo firmware enviado na flash do ESP32 */
      if (Update.write(upload.buf, upload.currentSize) != upload.currentSize)
        Update.printError(Serial);
    }
    else if (upload.status == UPLOAD_FILE_END)
    {
      /* Final de upload */
      if (Update.end(true))
        Serial.printf("Sucesso no update de firmware: %u\nReiniciando ESP32...\n", upload.totalSize);
      else
        Update.printError(Serial);
    } });
  server.begin();
  /*===========================================================================================================

    Setup Nextion

    =============================================================================================================*/
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
void loop()
{
  //Atualiza o cliente para a atualização OTA
  server.handleClient();
  delay(1);
  // contador_ms++;
  // if (contador_ms >= 5000)
  // {
  //   contador_ms = 0;
  //   Serial.print("IP obtido: ");
  //   Serial.println(WiFi.localIP());
  // }

  //Esta função trabalha como um listener para os eventos de press e release dos objetos utilizados no NEXTION
  nexLoop(nex_listen_list);

  //Chama a função para escrever na waveform
  if (isPage0 == true)
  {
    atualiza_waveform();
    delay(20);
  }
}