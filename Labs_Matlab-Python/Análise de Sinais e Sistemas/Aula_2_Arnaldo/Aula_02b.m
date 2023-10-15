%***********************************************************
%Aula_02
%Segunda aula de análise 
%Versão 1: 28/02 Ultimo modificado em:28/02/23
%Nome: João Fernando Rangel Guimarães
%Plota um gráfico com 4 quadrantes
%************************************************************

clc
clear all
close all

A=10
f= [60 120 180]
T=1./f
omega=2*pi*f
N=1
Res=50

t=0:T(1)/Res:N*T(1)-T(1)/Res
soma=0

for k=1:3
    y=A*sin(omega(k).*t)
    subplot(2,2,k)
    plot(t,y,'r')
    soma=soma+y
    xlabel('Tempo [s]')
    ylabel('Tensão [V]')
    title('Tensão x tempo')
    
end

subplot(2,2,4)
plot(t,soma,'k')
xlabel('Tempo [s]')
ylabel('Tensão [V]')
title('Tensão x tempo')
