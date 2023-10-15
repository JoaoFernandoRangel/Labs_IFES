clc
clear all

figure(1)
num1 = [0 1];
den1 = [10 0];
syms t s;
T=10;
%s = tf('s');
%G1 = 1/(T*s)
G1 = tf(num1, den1);
step(G1)

figure(2)
num2 = [1 0];
den2 = [1 10];
G2 = tf(num2, den2);
step(G2)

F = s/(s+10);
Fu = (1/s)*F;
G3 = ilaplace(Fu)

figure(3)
impulse(G1)

figure(4)
impulse(G2)

G4 = ilaplace(F)

%5.3 exercicio
%a
syms Fs;
M = 1; 
K =1; 
B=1;
%F = M*x^2 + B*x^1 + K*x;
%F = M*s*s*x + B*s*x + K*x;
%x = Fs/(M*s*s + B*s + K)
%b
num3 = [0 0 0 1];
den3 = [1 1 1];
x = tf(num3, den3);
figure(5)
step(x)

%d
X = (1/s)*(1/(M*s*s + B*s + K))
G5 = ilaplace(X)

%e
figure(6)
impulse(x)




