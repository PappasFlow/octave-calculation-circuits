%%
clear all
close all
clc

x = input("ingrese orden de la matriz: ")

admitanceMatrix=zeros(x,x);
voltageMatrix=zeros(x,1);
currentMatrix=zeros(x,1);

for i=1:1:x
    for j=1:1:x
        admitanceMatrix(i,j) = input(strcat('ingrese el valor de la admitancia ', num2str(i),'x',num2str(j), ' :'))
    end
end
admitanceMatrix

%%
for i=1:1:x
    currentMatrix(i,1) = input(strcat('ingrese el valor de la corriente ', num2str(i), ' :'))
end
currentMatrix


%%
voltageMatrix=linsolve(admitanceMatrix,currentMatrix)

%%
voltageMatrixPol.mod=voltageMatrix;
voltageMatrixPol.angleRad=voltageMatrix;
voltageMatrixPol.angleDeg=voltageMatrix;
for i=1:1:x
    [voltageMatrixPol.angleRad(i,1),voltageMatrixPol.mod(i,1)]=cart2pol(real(voltageMatrix(i,1)),imag(voltageMatrix(i,1)));
    voltageMatrixPol.angleDeg(i,1)=rad2deg(voltageMatrixPol.angleRad(i,1));
end
%%
for i=1:1:x
    voltageMatrixPol.mod(i,1)
    voltageMatrixPol.angleDeg(i,1)
end