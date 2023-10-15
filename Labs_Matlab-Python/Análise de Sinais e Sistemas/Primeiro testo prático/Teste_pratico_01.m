%***********************************************************
%
%Teste_pratico_01
%Nome: João Fernando Rangel Guimarães & Tulio Boechat Rodrigues
%
%************************************************************
%Etapa 1: Uso da função inline
f = inline('exp(-0.5*t).*sin(2*pi*t)','t');
%calculando o f(2)
%forma 1
t = 1.75;%o valor de t pode ser alterado diretamente
f(t)
%%
%acessando uma faixa de valores de t
f = inline('exp(-0.5*t).*sin(2*pi*t)','t');
t = (-1.75:1.75);
f(t);
%plotando uma função inline do vetor de tempo
%vetor de valores inteiro com baixa resolução
figure(1)
plot(t,f(t),'b-');
xlabel(' t');
ylabel(' f(t)');
grid on
t = (-1.75:0.01:1.75);
hold on
plot(t, f(t), 'r-')
u = inline('(t>=0)','t');
%baixa resolução
t=(-3:3);
close 
figure(2)
plot(t, u(t), 'b-');
xlabel(' t');
ylabel(' u(t)');
%alta resolução
t=(-3:0.01:3);
hold on
plot(t, u(t), 'r-');
%%criando um pulso
%%
%plotando função pulso
p = inline('(t>=-1) & (t<1)', 't');
u = inline('(t>=0)','t');
t=(-2:0.01:2);
figure (1) % no pdf é a figura 3 mas aqui esta divido em seções
plot(t, p(t), 'b-');
xlabel('t')
ylabel('p(t) = u(t+1) - u(t-1)');
axis ([-2 2 -.1 1.1])
%%
clear 
clc
close all
%criando funções limitadas por pulso e plotando neste intervalo
g = inline('exp(-0.3*t).*cos(2*pi*t).*(t>=0)', 't');
t = (-1:0.01:1);
%plotando sem mudaça de escala
figure (1)
subplot(3,1,1)
plot(t,g(t));
xlabel('t');
ylabel('g(t)');
grid on
%plotando com mudança de escala e deslocamento temporal
subplot(3,1,2)
plot(t, g(2*t+1));
xlabel('t');
ylabel('g(2t+1)');
grid on
%plotando com reversão de escala e deslocamento temporal
subplot(3,1,3)
plot(t, g(-t+1));
xlabel('t');
ylabel('g(-t+1)');
grid on
%%
%Etapa 2
%Descobrindo raízes de polinômios usando função roots
clear
clc
polinomio1 = [1 4 4];
polinomio2 = [1 4 7];
polinomio3 = [1 4 45];
r1 = roots(polinomio1);
r2 = roots(polinomio2);
r3 = roots(polinomio3);
disp(['case(k=4):roots = [',num2str(r1.'),']']);
disp(['case(k=7):roots = [',num2str(r2.'),']']);
disp(['case(k=45):roots = [',num2str(r3.'),']']);

%%
%Etapa 3
%comando ezplot um unico gráfico cada equação abaixo
%
close all
Eq1 = inline('5*exp(-t) + exp(-2*t)'); %transforma a equação em uma string para poder ser inserida na função Ezplot
Eq2 = inline('((2+3*t).*exp(-3*t)).*heaviside(t)');
Eq3 = inline('(-exp(-3*t)+2*exp(-2*t)).*heaviside(t)');
ezplot(Eq1)
hold on
ezplot(Eq2)
hold on
ezplot(Eq3)
hold on
grid on

%%
%etapa 4
%CI's ylinha(o)= 3  y(0) = -7
%Resolvendo equação diferencial com termo linear sendo alterado.
clear
clc
y_7 = dsolve ('D2y+4*Dy+4*y=0', 'y(0)=-7', 'Dy(0)=3','t');
disp(y_7)
y_11 = dsolve ('D2y+4*Dy+11*y=0', 'y(0)=-7', 'Dy(0)=3','t');
disp(y_11)
y_70 = dsolve ('D2y+4*Dy+70*y=0', 'y(0)=-7', 'Dy(0)=3','t');
disp(y_70)
%%
%Etapa 5
%Resposta ao impulso de um sistema descrito pela equação abaixo. 
%É feira a resposta a entrada nula e esta é analisada com os CI's da entrada impulso
%Após isso a equação resultante é multiplicada pelo polinômio Q(D) = D + 2
%A resposta é plotada em seguida
clear
clc
y_n = dsolve('D2y + 3*Dy +2*y', 'y(0) = 0', 'Dy(0)=1', 't');

Dy_n = diff(y_n);

h = Dy_n + 2*y_n;
disp(h)















