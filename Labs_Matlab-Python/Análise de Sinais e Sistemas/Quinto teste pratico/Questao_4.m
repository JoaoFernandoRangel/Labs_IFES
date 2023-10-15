%% Esse Exemplo faz a Transformada Discreta de Fourier de um sinal Periódico
% criado pela soma de 3 senóides
clc; clear all; close all
%% Senoides e aliasing
% Taxa de amostragem
fs=1000; Ts=1/fs;
% Frequencias, em Hz, do sinal
f1=20; DigFreq1=2*pi*f1/fs;
f2=30; DigFreq2=2*pi*f2/fs;
f3=40; DigFreq3=2*pi*f3/fs;
% O Sinal
N=1500; % Amostras
n = 0:1:N-1;
t_sample = [0 : Ts : (N-1)*Ts];
x=3.*cos(DigFreq1.*n)+cos(DigFreq2.*n)+2.*cos(DigFreq3.*n);
figure(1);
stem(t_sample,x)
%% FFT do sinal
Xf=fft(x);
% os valores de xn são valores reais, enquanto os valores de Xf são
% complexos. Veja alguns exemplos:
x(2:6)
Xf(30:34)
%Xf são valores complexos porque representam magnitude e fase!!!!
%Magnitude
Xf_mag=abs(Xf);
Xf_mag(30:34)
figure(2)
plot(Xf_mag)
%%
clear all
close all
clc
Tmax=0.5; % Intervalo de duração de cada onda
fs=200; % Frequência de amostragem
t=[0:(1/fs):Tmax+2]; % Amostragem no tempo
L=length(t);
% Pulso retangular
T0=0; % Instante de início do pulso retangular
T=Tmax; % Duração do pulso retangular
% Definição do início e final da janela
L_ini=length([0:(1/fs):T0]);
L_pulse=length([0:(1/fs):T]);
L_fin=L-L_ini-L_pulse;
win = rectwin(L_pulse);
wRect1 = [zeros(L_ini,1); win; zeros(L_fin,1)]';
figure(1)
subplot(311)
plot(t,wRect1,'LineWidth',1)
grid on
xlabel('Tempo(s)');
ylabel('Amplitude');
X=fft(wRect1);
subplot(312)
plot(t,abs(X))
grid on
xlabel('bins');
ylabel('Amplitude');
Y=fftshift(X);
subplot(313)
plot(t,abs(Y))
ylim([0 100])
grid on
xlabel('bins');
ylabel('Amplitude');
%%
%questão em si
Fs = 1000; % Sampling frequency
T = 1/Fs; % Sampling period
L = 1000; % Length of signal
t = (0:L-1)*T; % Time vector
%%Create a matrix where each row represents a cosine wave with scaled 
%frequency. The result, X, is a 3-by-1000 matrix. The first row has a wave 
%frequency of 50, the second row has a wave frequency of 150, and the third 
%row has a wave frequency of 300.
x1 = cos(2*pi*60*t); % First row wave
x2 = cos(2*pi*120*t); % Second row wave
x3 = cos(2*pi*180*t); % Third row wave
X = [x1; x2; x3];
%%Plot the first 100 entries from each row of X in a single figure in order 
%and compare their frequencies.
figure(1)
for i = 1:3
 subplot(3,1,i)
 plot(t(1:100),X(i,1:100))
end
dim = 2;

%%Compute the Fourier transform of the signals.
Y = fft(X,L,dim);
%%Calculate the double-sided spectrum and single-sided spectrum of each 
%signal.
P2 = abs(Y/L);
P1 = P2(:,1:L/2+1);
P1(:,2:end-1) = 2*P1(:,2:end-1);
%%In the frequency domain, plot the single-sided amplitude spectrum for 
%each row in a single figure.
figure(2)
for i=1:3
 subplot(3,1,i)
 plot(0:(Fs/L):(Fs/2-Fs/L),P1(i,1:L/2))
end
Fs = 361;
t = 0:1/Fs:1-1/Fs;
f1=60; % Hz
f2=120; % Hz
f3=180;
x1 = cos(2*pi*f1*t);
x2 = cos(2*pi*f2*t);
x3 = cos(2*pi*f3*t);
x = x1+x2+x3;

%%Compute the Fourier transform of the signal. Plot the magnitude of the 
%transform as a function of frequency.
y = fft(x);
z = fftshift(y);
figure(3)
ly = length(y);
f = (-ly/2:ly/2-1)/ly*Fs;
subplot(2,1,1)
plot(t,x)
subplot(2,1,2)
stem(f,abs(z))
title('Double-Sided Amplitude Spectrum of x(t)')
xlabel('Frequency (Hz)')
ylabel('|y|')
grid
%%
close all
clear all
clc

