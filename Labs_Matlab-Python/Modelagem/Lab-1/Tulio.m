clc
clear all
close all

syms s
num1 = [5 1];
den1 = [10 1];
G1 = tf(num1,den1);
figure (1);
step(num1, den1);
step (1, 2, 3, 4);
step(G1);

figure(2);
impulse(num1, den1);
impulse(1, 2, 3, 4);

%letra a
figure(3);
num2 = [0 1];
den2 = [10 0];
step(num2,den2)
figure(4);
G2 = tf(num2,den2);
step(G2);

%letra b
figure(5);
K = G2/(1+G2)
step(K)
[num,dem]= tfdata(K,'v')

%letra c
figure (6);
d1 = poly2sym (num,s)
d2 = poly2sym (dem,s)
%degrau
ilaplace((d1/d2)*1/s)

%letra a,2
num2 = [0 1];
den2 = [10 0];
impulse (num2, den2)

%letra b,2
impulse(K)

%letra c,2
%impulso
ilaplace(d1/d2)


%5.3
%c
figure (7)
num3= [1];
dem3 = [1 1 1];
step(num3,dem3)

%d
br =poly2sym (num3,s)
br2=poly2sym (dem3,s)
%degrau
ilaplace((br/br2)*(1/s))
%impulso
ilaplace((br/br2))