# Robo_Educativo
![alt text](https://enginoeducation.com/wp-content/uploads/2019/01/43.png)

# Instalação
- Preparando a IDE: A IDE do Arduino não possui nativamente as placas da espressif em seu banco de dados. Portanto, é necessário instalar a ESP. [Este artigo](https://www.usinainfo.com.br/blog/programar-esp32-com-a-ide-arduino-tutorial-completo/) ensina passo a passo o processo(Configuração do ESP32 na IDE do Arduino). 
- Para que a interface funcione, copie a biblioteca do Nextion, localizada em Programação/IHM 3,5/Biblioteca_Nextion_ESP, para a basta "libraries" criada localmente pela IDE.
- O arquivo da programação principal está em Programação/ESP32/src/main.cpp. 
- Antes de realizar o upload para o microcontrolador no arquivo main.cpp é preciso mudar as configurações da conexão wifi. Nas linhas 15 e 16 mude para o nome e senha de rede local, respectivamente.
- Depois de tudo configurado, faça o upload da programação para a ESP32.

-------------------------------------------------------------------------------------------------------------------

# Reciclatron 

## Project Overview 
Projeto de captação dos dados de peso e altura do lixo em um container. Tais dados são enviados para um Raspberry pi Zero W, servindo como servidor local, via Lo-Ra, para que posteriormente possa fazer update de um banco de dados Firebase.

### Tecnologias utilizadas

#### Controle 

|Tipo|Nome|
|----|----|
|Comunicação|`Lo-Ra`|
|Banco de Dados|`Firebase`|
|Sensor|`Célula de Carga - 50Kg`|
|Sensor|`hc-sr04`|
|Linguagem|`Python`|
|Linguagem|`C++`|


#### Eletrônica 

|Tipo|Nome|
|----|----|
|Processador|`Raspberry Pi Zero W`|
|Controlador|`atmega328p-pu`|
|Módulo|`LoRa RFM95`|
|Módulo|`HX711`|


## Detalhes

### Datas
- Início - 020
- Fim - 021
### Membros Executores 
- Goto - `ECA020`;
- Pedro - `ECA020`.
