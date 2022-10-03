clear all
clear all
clc

pkg load symbolic
syms s 

disp('ANTITRANSFORMADA DE LAPLACE')
disp('NOTA: la exprecion debe estar contenida entre () para evitar errores')
disp('NOTA: la exprecion no debe omitir signos de multiplicacion * ')
disp('')
%% 
ec = sym (input("ingrese expresion en el dominio de (s): ","s"))
%%
disp('Expresion en el dominio del tiempo (t)')
ilaplace(ec)