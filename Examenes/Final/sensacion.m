%Script que lee una matriz almacenada en un fichero de datos.mat. En dicha
%matriz, la primera columna se encuetran 200 valores numerados, en la
%segunda velocidades de viento y en la tercera temperaturas. Además calcula
%la sensación térmica del viento.
clear all
clc
load datos

%LECTURA Y/O INICIALIZACIÓN DE DATOS:
Ta = 10; %temperatura ambiente
v = M(:,2); %vector con las velocidades del viento
T = M (:,3); %vector de temperaturas

%CÁLCULOS:
Twc = 13.112 + (0.6215*Ta) - 11.47*v.^0.16 + 0.3965*Ta*v.^0.16; %sensación térmica del viento
figure;
plot (v,Twc,'*m');
title('Sensación térmica en función de la velocidad del viento');
xlabel('Velocidad del viento');
ylabel('Sensación térmica');
%ajuste polinómico de tercer grado:
p = polyfit(v,Twc,3);
Twcestimada = polyval(p,v);
figure;
plot(v,Twc,'m*',v,Twcestimada,'c');
title('Ajuste polinómico de la sensación térmica');
xlabel('Velocidad del viento');
ylabel('Sensación térmica estimada');