%***********************************************************
%Testo pratico 2
% 
%Versão 1: 25/04 Ultimo modificado em:25/04
%Nome: João Fernando Rangel Guimarães & Tulio Boechat Boechat 
%
%************************************************************
close all
clc, clear all
frequencia = 60; %hertz
periodo = 1/frequencia;
resolucao = 1000;
t=0:periodo/resolucao:periodo*2-periodo/resolucao;
A=10;
A0 = A/2;
amplitude = zeros (1,10);
fase = zeros (1,10);
numero = 100;
%an = 80*sen((n*pi/4)^2)/((n*pi)^2);
soma = A0/2;
for k=1:1:numero
    termo =(8*A*(sin((k*pi/4))^2))/((k*pi)^2);  
    somado = termo*cos(k*pi*2*frequencia*t);
    soma = soma + somado;
    amplitude(k) = termo;  
    fase(k) = 0;
end

%Plotagem dos gráficos
k = 1:1:numero;
figure (1)
plot(t,soma)
xlabel('Tempo [s]')
ylabel('Sinal')
title('Série de Fourier')
figure (2)
%plota espectro de amplitude
subplot(2,1,1)
stem(k, amplitude)
%ylim([0 5])
xlim([0 numero+1])
xlabel('frequência(f0*Hz)')
ylabel('Amplitude')
title('Espectro de amplitude')
%plota espectro de fase
subplot(2,1,2)
stem(k, fase)
xlabel('frequência (f0*Hz)')
ylabel('Fase')
title('Espectro de fase')












