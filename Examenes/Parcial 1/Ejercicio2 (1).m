%COMENTARIOS GENERALES DEL PROGRAMA:
%Este script crea una matriz denominada M con la siguiente distribución de
%datos:
%Una primera columna que contiene los números del 1 al 100.
%Una segunda columna que contiene valores aleatorios enteros uniformemente
%distribuidos entre 10e5 y 10e6.
%Una tercera columna que contiene valores aleatorios con medio 5*10^3 y
%desviación estándar 300.
clc

%INICIALIZACION DE DATOS:
M1=[1:1:100]; %primera columna
M2= floor(rand(1,100)*100+(10^6)); %segunda columna
M3= randn(1,100)*300+(5*(10^3)); %tercera columna

%CALCULOS:
M=[M1',M2',M3']; 

%SALIDA DE RESULTADOS:
disp(['La matriz es: ']);
M
datosmat=M;
save('datosmat')
