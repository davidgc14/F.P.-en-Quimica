%Script que obtiene una matriz M con la siguiente distribuci�n de datos:
%Primera columna: los n�meros del 1 al 200.
%Segunda columna: valores aleatorios con media 30 y desviaci�n 10.
%Tercera columna: valores aleatorios distribuidos uniformemente entre -10 y
%10.
clear
clc

%C�LCULOS:
M1 = [1:200];
M2 = randn(1,200)*10 + 30;
M3 = rand(1,200)*20 - 10;
M=[M1',M2',M3'];
save datos M