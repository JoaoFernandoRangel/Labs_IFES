%***********************************************************
%Aula_01
%Primeira aula de an�lise 
%Vers�o 1: 28/02 Ultimo modificado em:28/02/23
%Nome: Jo�o Fernando Rangel Guimar�es
%Plota uma sen�ide
%************************************************************

clc
clear all
close all

res = 100; %numero de divis�es do vetor tempo
N=5; %numero de ciclos completos a serem plotados
A=10; %tens�o em volts
f=60; %frequencia em hertz
omega = 2*pi*f; %velocidade angular em rad/s
periodo= 1/f; %per�odo em segundos
tempo = 0:(periodo/res):(N*periodo-(periodo/res)); %cria vetor de tempo com 10 intervalos de tempo
v1 = A*sin(omega*tempo);
v2 = A*cos(omega*tempo);
figure(1) %determina quantas e quais janelas s�o abertas
plot (tempo, v1, 'r')
hold on %mant�m o gr�fico que acabou de ser plotado
plot (tempo, v2, 'b')
axis([-0.005 0.09 -11 11])
% axis([XMIN XMAX YMIN YMAX]) 
%valores do vetor podem ser parametrizados
figure(2)
subplot(2,1,1) %subplot(dimens�es,dimens�es, espa�o a ser plotado)
%escreve o gr�fico abaixo na primeira posi��o da janela a ser aberta
plot (tempo, v1, 'rd')
subplot(2,1,2)
plot (tempo, v2, 'bd-')






