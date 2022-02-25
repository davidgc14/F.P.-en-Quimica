clc;
clear all;

% UTILIDADES

fprintf("Matriz diagonal: \n");
A = eye(3);
disp(A);

fprintf("Matriz de ceros: \n");
B = zeros(2,3);
disp(B);

fprintf("Matriz de unos: \n");
C = ones(3,2);
disp(C);

fprintf("Matriz aleatoria: \n");
D = rand(2,2); % Valores de distribución uniforme en (0,1)
disp(D);

fprintf("Matriz aleatoria normalizada: \n");
E = rand(2,3); % Aleatorios de media 0 y varianza 1
disp(E);
% Se puede usar para un valor único
% x = rand = rand() = rand(1,1)



fprintf("Vectores: \n");
F = [1 : 10]
G = [1 : 0.3 : 2]
H = linspace(1, 10, 10) 
I = linspace(1, 1.9, 4)% Si no se indica el tercer número (numero de puntos) se toma 100 por defecto


fprintf("Obtención de valores de la matriz/vector: \n");

F(3) % Selección de valor
G(1:3) % Recorte de vector
A(2:3, 2:3) % Submatriz
A(2, :) % vector de una matriz
A(2, 2:end)
E(1, [1,3]) % Fila 1 columnas 1 y 3

fprintf("Operaciones con matrices: \n");

J = rand(3,3)

fprintf("Transpuesta: \n");
disp(J'); % También transpose(J)

fprintf("Inversa: \n");
disp(inv(J));

fprintf("Su determinante: \n");
disp(det(J));

fprintf("Suma y multiplicación: \n");
disp(3 * (2 + J));

fprintf("Operación elemento a elemento: \n");
K = [2 2 ; 3 3]
L = K.*K
M = K*K
M = K^2
N = K.^2

fprintf("Diemnsiones: length() \n");

fprintf("Resolver sistema matricial A*X = B: \n");
O = rand(3,3);
P = rand(3,1);
X = O\P
