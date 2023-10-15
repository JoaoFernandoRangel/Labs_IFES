clear
close all
clc
syms s

numerador = [0 1];
denominador = [10 0];
g = tf(numerador, denominador);
subplot(2,2,1)
step(g)

realimentado = g/(1+g);
[num, den] = tfdata(realimentado, 'v');
subplot(2,2,3)
step(realimentado)

subplot(2,2,2)
impulse(g)
subplot(2,2,4)
impulse(realimentado)

%%
clear
close all
clc

massa = 1;
damp = 1;
mola = 1;
numerador = [0 0 1];
denominador = [massa damp mola];
g = tf(numerador, denominador);
subplot(2,2,1)
step(g)
subplot(2,2,2)
impulse(g)

%%
clear 
close all
clc

a = 0:0.2:1;
numerador = [0 0 1];
for i=1:1:6
    denominador = [1 a(i) 1];
    g = tf(numerador, denominador);
    subplot(3,2,i);
    step(g) 
        
end


















