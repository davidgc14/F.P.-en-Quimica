%COMENTARIOS GENERALES DEL PROGRAMA:
%Este script calcula las cantidades relaaticas de C-14 que se corresponden
%a un período total de 100.000 años en incrementos de 100 años y dibuja la
%gráfica de la cantidad relativa en función del tiempo.
clc

%INICIALIZACION Y/O LECTURA DE DATOS:
peridodesemidesintegracion = 5730; %años
t=[0:100:100000];

%CALCULOS:
%En primer lugar se debe calcular la constante k, para ello despejamos la
%ecuación de la desintegracion radiativa y usamos el periodo de
%semidesintegracion.
k=(-log(0.5))./peridodesemidesintegracion;
Cantidadrelativa= exp(-k.*t);

%SALIDA DE RESULTADOS:
plot(t,Cantidadrelativa,'-m');
xlabel('tiempo');
ylabel('Cantidad relativa');
title('Evolucion de la cantidad relativa');