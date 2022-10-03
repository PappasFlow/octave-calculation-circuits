clear all
clear all
clc
%%
disp('FRACCIONES PARCIALES CON RESIDUE') 
disp('NOTA: Los vectores se forman por coeficientes sin incluir variables')
disp('NOTA: El orden de los vectores va desde el termino de mayor orden a el de menor') 
disp('') 
%% 
pol_sup = input("ingrese Polinomio Superior entre []: ")
pol_inf = input("ingrese Polinomio Inferior entre []: ")
%%
[Residuos,Polos,Termino_Independiente]=residue(pol_sup,pol_inf);
Residuos
Polos
Termino_Independiente
