%%
clear all
close all
clc
disp('PARALELO DE RESISTORES')
disp('')
%%
x = input("ingrese la cantidad de elementos: ")
elemento=zeros(x,1);

for i=1:1:x
  elemento(i,1) = input(strcat('ingrese el valor de impedancia ', num2str(i), ' :'));
end

paralelo=0;

for i=1:1:x
  paralelo=paralelo+(1/elemento(i,1));

end
paralelo=(1/paralelo)
