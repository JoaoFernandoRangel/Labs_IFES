%***********************************************************
%Quinto teste prático
%
%Versão 1: 20/06 Ultimo modificado em:20/06
%Nome: João Fernando Rangel Guimarães
%responde as perguntas lmao
%************************************************************
clear all
close
clc
%Primeiro conjunto de CI's
n=0:10;
a = [1 -1.56 0.81];
b = [1 3 0];
yi = [2 1];
xi=0;
x =zeros(1,size(n,2)); %entrada nula
zi = filtic(b,a,yi,xi)
y = filter(b,a,x,zi)
stem(n,y)
%%
clear all
close
clc
%Segundo conjunto de CI's
n=0:10;
a = [1 -1.56 0.81];
b = [1 3 0];
yi = [1 0];
xi=0;
x =zeros(1,size(n,2)); %entrada nula
zi = filtic(b,a,yi,xi)
y = filter(b,a,x,zi)
stem(n,y)
%%
clear all
close
clc
%terceiro conjunto de CI's
n=-1:10;
a = [1 -1.56 0.81];
b = [1 3 0];
yi = [1 0];
xi=0;
x =zeros(1,size(n,2)); %entrada nula
zi = filtic(b,a,yi,xi)
y = filter(b,a,x,zi)
stem(n,y)
%%
%Questao 2
clear all
close
clc
syms n z
f = (0.8)^n.*heaviside(n); %exp(-n/5).*cos(n*pi/5)
fz = ztrans(f,n,z)
pretty(fz)

%%
%Questão 3
clear all
close
clc

h = [1 3 2 -1 1];
x = [-1 0 2 0 2];
y = conv(x,h);
x = -3:1:5;
stem(x,y)
y
x


%%
%Questão 4
clear all
close all
clc











