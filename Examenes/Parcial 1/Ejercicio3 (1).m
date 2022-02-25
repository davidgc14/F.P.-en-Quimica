%COMENTARIOS GENERALES DEL PROGRAMA:
%Este script lee una matriz denominada M almacenada en un fichero
%denominado datos. En dicha matriz se encuentran 100 valores enumerados
%(según primera columna), de valores arbitrarios de segundos
%totales(segunda columna), y valores de control (tercera columna), que se
%ignoran. Este programa escribe los valores de tiempo arbitrario expresados
%en DIAS, HORAS, MINUTOS y SEGUNDOS.
clc

%INICIALIZACION DE DATOS:
segundostotales= datosmat(:,2); 

%CALCULOS:
segundos=rem(segundostotales,60);
minutostotales=floor(segundostotales./60);
minutos=rem(minutostotales,60);
horastotales=floor(minutostotales./60);
horas=rem(horastotales,24);
dias=floor(horastotales./24);

%SALIDA DE RESULTADOS:
disp(['Numeración     Valor Arbitrario      Dias     Horas       Minutos       Segundos']);
A=[M(:,1),M(:,2),dias, horas, minutos, segundos]

