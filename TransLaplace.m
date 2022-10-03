%% requiere pkg symbolic
clear all
close all
clc

pkg load symbolic
syms t 

disp('TRANSFORMADA DE LAPLACE')
disp('NOTA: la exprecion debe estar contenida entre () para evitar errores')
disp('NOTA: la exprecion no debe omitir signos de multiplicacion * ')
disp('')
%% 
ec = sym (input("ingrese expresion en el dominio de (t): ","s"))
%%
disp('Expresion en el dominio de Laplace (s)')
laplace(ec)

