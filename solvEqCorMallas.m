%%
clear all
close all
clc

x = input("ingrese orden de la matriz: ")

impedanceMatrix=zeros(x,x);
voltageMatrix=zeros(x,1);
currentMatrix=zeros(x,1);

for i=1:1:x
    for j=i:1:x
      if(j==i)
        temp = input(strcat('ingrese el valor de la impedancia propia  ', num2str(i),'x',num2str(j), ' :'));
      else
        temp = input(strcat('ingrese el valor de las copedancias  ',num2str(j),'x',num2str(i), ' y  ', num2str(i),'x',num2str(j), ' :'));
      endif
        impedanceMatrix(i,j)=temp;
        impedanceMatrix(j,i)=temp
    end
end
impedanceMatrix

%%
for i=1:1:x
    voltageMatrix(i,1) = input(strcat('ingrese el valor de la tension ', num2str(i), ' :'))
end
voltageMatrix


%%
currentMatrix=linsolve(impedanceMatrix,voltageMatrix);
for i=1:1:x
disp(['I',num2str(i),'= ',num2str(currentMatrix(i,1))])
end

%%
currentMatrixPol.mod=currentMatrix;
currentMatrixPol.angleRad=currentMatrix;
currentMatrixPol.angleDeg=currentMatrix;
for i=1:1:x
    [currentMatrixPol.angleRad(i,1),currentMatrixPol.mod(i,1)]=cart2pol(real(currentMatrix(i,1)),imag(currentMatrix(i,1)));
    currentMatrixPol.angleDeg(i,1)=rad2deg(currentMatrixPol.angleRad(i,1));
end
%%
for i=1:1:x
  disp(['Forama polar I',num2str(i)])
  disp(['Modulo= ',num2str(currentMatrixPol.mod(i,1)),' Angulo= ',num2str(currentMatrixPol.angleDeg(i,1)),'º'])
    %%currentMatrixPol.mod(i,1)
    %%currentMatrixPol.angleDeg(i,1)
end


