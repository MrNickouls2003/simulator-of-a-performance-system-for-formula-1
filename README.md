# Projeto de Simulação de Treinamento de Piloto de Fórmula 1

## Português

## Introdução

Este projeto foi desenvolvido em MikroC for PIC utilizando o PIC18F4550 e faz uma alusão ao treinamento de um piloto de Fórmula 1, realizado durante 5 voltas e monitorado pelo engenheiro de desempenho. O treinador do piloto é responsável por melhorar o desempenho, analisando dados como temperatura do motor e velocidade, além de fornecer orientações para otimizar a performance do piloto em pista.

<p align="center">
  <img src="./images/introducao-picsimlab.png" alt="Picsimlab">
</p>

## Funcionalidades

### Tela de Início

<p align="center">
  <img src="./images/tela_inicio.png" alt="Tela de Início">
</p>

- Ao iniciar o programa, o LCD foi personalizado para exibir um carro e o logotipo da Fórmula 1.
- A tela de abertura é exibida por 5 segundos, tempo controlado utilizando o TIMER.

### Controle de Voltas

<p align="center">
  <img src="./images/controle_voltas.png" alt="Controle de Voltas">
</p>

- Ao apertar o botão **RB1**, o display é acionado e vai de 0 a 5, indicando a volta atual no LCD.
- O painel de controle permanece aberto para que o treinador possa monitorar e analisar a performance do piloto.

### Largada

<p align="center">
  <img src="./images/largada.png" alt="Largada">
</p>

- Ao clicar no botão **RB0**, as luzes de largada são ativadas, sinalizando o início da corrida.

### Dados do Piloto

<p align="center">
  <img src="./images/dados_piloto.png" alt="Dados do Piloto">
</p>

- Assim que as luzes de largada apagam, os dados do piloto são exibidos automaticamente para o engenheiro de desempenho.

#### Velocidade
- A velocidade do carro é apresentada em porcentagem, utilizando um potenciômetro, e é exibida no LCD para o engenheiro monitorar.

#### Temperatura do Motor
- A temperatura do motor é constantemente exibida para análise, sendo um dado essencial para a prevenção de acidentes.

### Controle de Temperatura

#### Velocidade Inferior a 70%
- Quando a velocidade do carro está abaixo de 70%, a temperatura do motor se mantém estável.

#### Velocidade Igual ou Acima de 70%

<p align="center">
  <img src="./images/temperatura_motor.png" alt="Temperatura do Motor">
</p>

- Quando a velocidade atinge ou ultrapassa 70%, a temperatura do motor começa a subir.
- Ao atingir 35ºC, um cooler é ativado para manter a temperatura entre 34ºC e 35ºC.

#### Velocidade Máxima (100%)

- Quando a velocidade chega a 100%, a temperatura do motor ainda está em 35ºC, mas um cooler de emergência é ativado por precaução.
- O buzzer também é acionado para alertar o engenheiro de que o motor está operando em sua velocidade máxima.

# Formula 1 Driver Training Simulation Project

## English

## Introduction

This project was developed in MikroC for PIC using the PIC18F4550 and simulates the training of a Formula 1 driver, conducted over 5 laps and monitored by the performance engineer. The driver's coach is responsible for improving performance by analyzing data such as engine temperature and speed, as well as providing guidance to optimize the driver's performance on the track.

<p align="center">
  <img src="./images/introducao-picsimlab.png" alt="Picsimlab">
</p>

## Features

### Start Screen

<p align="center">
  <img src="./images/tela_inicio.png" alt="Start Screen">
</p>

- Upon starting the program, the LCD is customized to display a car and the Formula 1 logo.
- The opening screen is displayed for 5 seconds, with the duration controlled by the TIMER.

### Lap Control

<p align="center">
  <img src="./images/controle_voltas.png" alt="Lap Control">
</p>

- By pressing the **RB1** button, the display is activated and goes from 0 to 5, indicating the current lap on the LCD.
- The control panel remains open so the coach can monitor and analyze the driver's performance.

### Race Start

<p align="center">
  <img src="./images/largada.png" alt="Race Start">
</p>

- By clicking the **RB0** button, the starting lights are activated, signaling the start of the race.

### Driver Data

<p align="center">
  <img src="./images/dados_piloto.png" alt="Driver Data">
</p>

- Once the starting lights turn off, the driver's data is automatically displayed for the performance engineer.

#### Speed
- The car's speed is displayed as a percentage using a potentiometer and shown on the LCD for the engineer to monitor.

#### Engine Temperature
- The engine temperature is continuously displayed for analysis, as it is crucial for preventing accidents.

### Temperature Control

#### Speed Below 70%
- When the car's speed is below 70%, the engine temperature remains stable.

#### Speed Equal to or Above 70%

<p align="center">
  <img src="./images/temperatura_motor.png" alt="Engine Temperature">
</p>

- When the speed reaches or exceeds 70%, the engine temperature begins to rise.
- At 35ºC, a cooler is activated to maintain the temperature between 34ºC and 35ºC.

#### Maximum Speed (100%)

- When the speed reaches 100%, the engine temperature remains at 35ºC, but an emergency cooler is activated as a precaution.
- The buzzer is also activated to alert the engineer that the engine is running at maximum speed.
