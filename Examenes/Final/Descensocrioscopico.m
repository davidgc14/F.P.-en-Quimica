%Scrip que realiza un modelo multivariable para modelar el descenso
%criosc�pico en funci�n de la molalidad de dos solutos. Para esto utiliza
%un conjunto de datos denominado ENTRENAMIENTO. Adem�s representa en 3D 
%dicho modelo. Tambi�n calcula el NRMSE y el MAE. Con este modelo
%multivaribale se estiman los valores de descenso criosc�pico de otro
%conjunto de datos denominados TEST.
clear
clc
load('datos2_.mat')

%LECTURA Y/O INICIALIZACI�N DE DATOS:
soluto1 = datos2(:,1);
soluto2 = datos2(:,2);
descenso = datos2(:,3);

%C�LCULOS:
v = descenso';
n = length(v);
for i = 1:n
    if v(i)<0
        v(i)= v(i)*(-1);
    end
end
%en este paso convertimos los valores negativos de descenso criosc�pico en
%positivos.
M = [soluto1,soluto2,v']; %esta es la matriz con los valores de descenso
%criosc�pico corregidos

ENTRENAMIENTO = M([1:70],:);
TEST = M([71:end],:);

molalidad1 = ENTRENAMIENTO(:,1);
molalidad2 = ENTRENAMIENTO(:,2);
descensocrioscopico = ENTRENAMIENTO(:,3);
B = [molalidad1',molalidad2',ones(70,1)]\descensocrioscopico';
descensoestimado = B(1)*molalidad1 + B(2)*molalidad2 + B(3);
plot3(molalidad1',molalidad2',descensoestimado);
xlabel('Molalidad soluto 1');
zlabel('Molalidad soluto 2');
ylabel('Descenso estimado');

%calculo de NRMSE y MAE:
n = length(molalidad1);
NRMSE= sqrt(sum(((descensoestimado-descensocrioscopico).^2)/n))/sqrt(sum((descensocrioscopico-mean(descensocrioscopico)).^2)/n))
MAE = (1/n)*sum(abs(descensocrioscopico-descensoestimado));







       