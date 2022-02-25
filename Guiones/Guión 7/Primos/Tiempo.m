clear all;
clc;

fprintf("\nCalculo de cantidades de numeros primos\n\n");


nprimos = zeros(1,10);
tiempos = zeros(1,10);
n = [1000:1000:10000];

tic;

for i = 1:10
    nprimos(i) = cuantosPrimos(n(i));
    tiempos(i) = toc;
end

Resultados = [n ; nprimos ; tiempos];
disp(Resultados);

p = polyfit(n,tiempos,2);

function y = polinomial(x,p)
    y = p(1).*x.^2 + p(2).*x + p(3);
end

figure(1);
plot(n,tiempos,"b;Datos;", n,polinomial(n,p),"r;Polinomial;");

hold on;
grid on;
xlabel("Valor máximo");
ylabel("Tiempo");
title("Tiempo de cálculo de primos");

hold off;