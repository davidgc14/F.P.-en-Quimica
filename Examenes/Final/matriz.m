%Script que obtiene una matriz M con la siguiente distribución de datos:
%Primera columna: los números del 1 al 200.
%Segunda columna: valores aleatorios con media 30 y desviación 10.
%Tercera columna: valores aleatorios distribuidos uniformemente entre -10 y
%10.
clear
clc

%CÁLCULOS:
M1 = [1:200];
M2 = randn(1,200)*10 + 30;
M3 = rand(1,200)*20 - 10;
M=[M1',M2',M3'];
save datos M