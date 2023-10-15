%***********************************************************
%Terceiro teste prático
%
%Versão 1: 16/05 Ultimo modificado em:25/05
%Nome: João Fernando Rangel Guimarães
%responde as perguntas lmao
%************************************************************
clear all
close
clc

syms x
F1 = 10*sin(5*x)*heaviside(x);
f1 = laplace (F1);
disp(f1)
F2 = (3*exp(-2*x)+2*x*exp(-2*x))*heaviside(x) - 5*dirac(x);
f2 = laplace(F2);
disp(f2)
%%
clear all
close
clc


syms x s 
d = [1 1 -4 -4]; %descobrindo as raízes 
n = [6 0 -12];
[r,p,k] = residue(n,d);%[vetor_de_residuos vetor_de_polos
funcao = 0;
for i=1:3
    funcao = funcao + r(i)/(s-p(i));   
end
disp(collect(funcao))
laplace_inversa_da_funcao = ilaplace(funcao, s);
disp(laplace_inversa_da_funcao)
%%
clear all
close
clc
syms t w
f1 = 10*exp(5*t)*(heaviside(t)-heaviside(t-1));
F1 = fourier(f1,t,w);
disp(F1)
%%
clear all
close
clc
syms x s 
d = [1 1 -4 -4]; %descobrindo as raízes 
n = [6 0 -12];
transfer = tf(n,d)
bode(transfer)
%%
clear all
close
clc
syms s t

n = conv(conv([1 -20], [1 +1000]),[10 0]);
d = [1 -100];
funcao = (10*s*(s-20)*(s+1000))/(s-100);
transfer = tf(n, d);
bode(transfer)
inversa = ilaplace(funcao,s,t)
viradinha = factor(laplace(inversa,t,s))





















