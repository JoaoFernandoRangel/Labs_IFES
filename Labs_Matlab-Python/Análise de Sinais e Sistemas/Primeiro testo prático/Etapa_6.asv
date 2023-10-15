clc
clear all
close all
%============================================================
% Parte 1 – Realizando a convolução gráfica (LATHI)
%============================================================
figure(1)
h = inline('(1*exp(-t)-1*exp(-2*t)).*(t>=0)','t');
x = inline('(5*t+3).*(t>=0)','t');
dtau = 0.005;
tau = -1:dtau:4;
ti = 0;
tvec = -0.25:0.1:3.75;
y = NaN*zeros(1,length(tvec)); % Pre-allocate memory
for t = tvec,
 ti = ti + 1; % Time index
 xh = x(t-tau).*h(tau);
 lxh = length(xh);
 y(ti) = sum(xh.*dtau); % Trapezoidal approximation of integral
 subplot(2,1,1)
 plot(tau,h(tau),'k-',tau,x(t-tau),'k--',t,0,'ok')
 %axis([tau(1) tau(end) -2.0 2.5])
 patch([tau(1:end-1);tau(1:end-1);tau(2:end);tau(2:end)],...
 [zeros(1,lxh-1);xh(1:end-1);xh(2:end);zeros(1,lxh-1)],...
 [0.8 0.8 0.8],'edgecolor','none')
 xlabel('\tau')
 legend('h(\tau)','x(t-\tau)','t','h(\tau)x(t-\tau)')
 c = get(gca,'children');
 set(gca,'children',[c(2);c(3);c(4);c(1)]);
 subplot(2,1,2)
 plot(tvec,y,'k',tvec(ti),y(ti),'ok')
 xlabel('t')
 ylabel('y(t) = \int h(\tau)x(t-\tau) d\tau')
 %axis([tau(1) tau(end) -1.0 2.0])
 grid
 drawnow
end
%============================================================
% Parte 2 - Verificação com função calculada (Prof. Arnaldo)
%============================================================
subplot(2,1,2)
%figure(2)
hold on
x=inline('(0.25*exp(-2*t)+2*exp(-t)+2.5*t-2.25)','t')
t=0:0.1:3.75;
plot(t,x(t),'r.')
%%
close all
figure (1)
x = inline('10*exp(3*t).*(t>=0)','t');
h = inline('exp(2*t).*(t>=0)','t');
dtau = 0.005;
tau = -1:dtau:4;
ti = 0;
tvec = -0.25:0.1:3.75;
y = NaN*zeros(1,length(tvec)); % Pre-allocate memory
for t = tvec,
 ti = ti + 1; % Time index
 xh = x(t-tau).*h(tau);
 lxh = length(xh);
 y(ti) = sum(xh.*dtau); % Trapezoidal approximation of integral
 subplot(2,1,1)
 plot(tau,h(tau),'k-',tau,x(t-tau),'k--',t,0,'ok')
 %axis([tau(1) tau(end) -2.0 2.5])
 patch([tau(1:end-1);tau(1:end-1);tau(2:end);tau(2:end)],...
 [zeros(1,lxh-1);xh(1:end-1);xh(2:end);zeros(1,lxh-1)],...
 [0.8 0.8 0.8],'edgecolor','none')
 xlabel('\tau')
 legend('h(\tau)','x(t-\tau)','t','h(\tau)x(t-\tau)')
 c = get(gca,'children');
 set(gca,'children',[c(2);c(3);c(4);c(1)]);
 subplot(2,1,2)
 plot(tvec,y,'k',tvec(ti),y(ti),'ok')
 xlabel('t')
 ylabel('y(t) = \int h(\tau)x(t-\tau) d\tau')
 %axis([tau(1) tau(end) -1.0 2.0])
 grid
 drawnow
end
%Gráfico para conferência
subplot(2,1,2)
%figure(2)
hold on
x=inline('(10*exp(3*t)-exp(2*t)/(3-2))','t')
t=0:0.1:3.75;
plot(t,x(t),'r.')







