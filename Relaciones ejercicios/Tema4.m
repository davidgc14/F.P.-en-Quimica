clc;
clear all;

# Matriz de datos

M = [38.91 3.904e-2 -3.105e-5 8.606e-9;
    48.5 9.188e-2 -8.54e-5 32.4e-9;
    29.10 1.158e-2 -0.6076e-5 1.311e-9;
    29 0.2199e-2 -0.5723e-5 -2.871e-9];

function y = capacidadCalorifica(Vector, T)
    y = Vector(1) + Vector(2).*T + Vector(3).*T.^2 + Vector(4).*T.^3;
end

T = [200 : 20 : 400];

SO2 = capacidadCalorifica(M(1,:), T);
SO3 = capacidadCalorifica(M(2,:), T);
O2  = capacidadCalorifica(M(3,:), T);
N2  = capacidadCalorifica(M(4,:), T);

Solucion = [T;SO2;SO3;O2;N2]';

disp(Solucion);

figure(1);
plot(T, SO2, 'r;SO2;', T, SO3, 'b;SO3;', T, O2, 'g;O2;', T, N2, 'k;N2;');
hold on;
grid on;
xlabel('Temperatura (Celcius)');
ylabel('Capacidad calorifica (J/kg)');
title('Capacidad calorifica de los gases');
hold off;
