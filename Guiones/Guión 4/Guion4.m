clear all;
clc;

disp("\nEJERCICIO 8\n\n");

x = [42 : 4 : 82];

figure(1);
plot(x, vapor(x), 'k');
hold on;

grid on;
xlabel("Celcius");
ylabel("Presión del vapor")
title("Vlariación de la presión lop10(p)");

hold off;

tabla = [x ; vapor(x)]';

disp('Resultados : ');
disp(tabla);