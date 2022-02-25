clc;
clear all;

fprintf("\n Ejercicio 1: \n");
A = zeros(5) -1; % también A = -ones(5)
disp(A);

clear variables; % Borramos variables para poder reutilizarlas

fprintf("\n Ejercicio 2: \n");
A = ones(6) - eye(6);
disp(A);

clearvars; % mismo comando que el anterior

fprintf("\n Ejercicio 3: \n");
A = 2 * rand(1,1000);
% disp(A); % demasiado grande, no lo mostramos por pantalla
fprintf("\t Observar figura 1\n")
figure(1);
histogram(A);

clearvars;

fprintf("\n Ejercicio 4: \n");
A = 10 * randn(1,20000) + 1;
% disp(A); % demasiado grande
fprintf("\t Observar figura 2\n")
figure(2);
histogram(A(1:100));

clearvars;

fprintf("\n Ejercicio 5: \n");
x = 0.85; y = 12.5;
A = [y, y^x, log(y/x), y*x, y+x]';
disp(A);

clearvars;

fprintf("\n Ejercicio 6: \n");
A = linspace(0,1,120);
% disp(A); % muy largo

clearvars;

fprintf("\n Ejercicio 7: \n");
A = [zeros(1,10) ones(1,10) zeros(1,10)+7.19];
disp(A);

clearvars;

fprintf("\n Ejercicio 8: \n");
A = [2:9 fliplr(2:8)];
disp(A);

% clearvars; % Vamos a usar el vector anterior

fprintf("\n Ejercicio 9: \n");
P = A(2:2:end);
I = A(1:2:end);
disp(P);
disp(I);

clearvars;

fprintf("\n Ejercicio 10: \n");
A = [0:4:24 ; fliplr(200:50:500) ; linspace(0,8,7)];
disp(A);

clearvars;

fprintf("\n Ejercicio 11: \n");
A = [fliplr(1:5) ; linspace(0,0,5) ; linspace(6,6,5)]';
disp(A);

clearvars;

fprintf("\n Ejercicio 12: \n");
A = [-5 0 7 11];
disp(A);
B = [16 0 7 11 -3 10 6];
disp(B);
C = [6 -5 -3 7];
disp(C);

fprintf("Los ejercicios 13, 14, 15 son iguales. \n");
fprintf("Los ejercicios 16, 17, 18 son para usar funciones especificas dadas en teoría.\n");

