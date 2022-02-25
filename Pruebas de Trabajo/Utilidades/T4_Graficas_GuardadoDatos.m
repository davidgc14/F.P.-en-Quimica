clc;
clear all;

close all; % esto es para cerrar las gráficas abiertas de la anterior ejecución

% INTRODUCCIÓN DE DATOS POR EL USUARIO

s = input('Introducir por terminal el valor de s :');



% IMPRESION DE DATOS POR PANTALLA

disp("El valor introducido es " + s); % disp funciona igual que println en Java
disp(['Tambien se puede', 'imprimir a modo de vector ', num2str(s)]);
% num2str facilita la conversion de valores numericos a string para la
% impresion de texto


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%% GRÁFICAS %%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Definimos dos vectores de puntos, uno para cada eje
% en el que cada coordenada i-ésima de ambos forman un punto en la grafica.

x = linspace(0, 2*pi, 100); % = 0 : 2*pi/100 : 2*pi
y = sin(x); 

% la función coseno puede trabajar con vectores, aplicándoles dicha función
% elemento a elemento.
% Si x = [1,2,3], entonces cos(x) = [cos(1), cos(2), cos(3)]

figure(1); % Esto es para cuando vayamos a crear varias funciones, no se nos solapen
plot(x,y); % función plot para imprimir la grafica con cordenadas x e y
hold on; % esto lo podemos usar para superponer graficas en la misma figura
grid on; % esto para mostrar cuadricula de fondo

z = cos(x);

% como tenemos el hold on activado, la siguiente grafica aparecerá en la misma figura
plot(x,z,"r"); % el tercer parametro está para poder "personalizar la grafica

plot(x, -sin(x), "ok"); % 'o' hace referencia a los circulos, 'k' al color


% GRAFICAS EN 3D

% definimos una nueva gráfica
figure(2); 

% parecido a plot, pero ahora necesitamos dos funciones, una para cada eje
t = linspace(0, 40, 500);
plot3(sin(t), cos(t), t);

grid on; % para que salga la cuadrícula, mejor para tridimensionales para visualizar mejor
axis square; % perspectiva caballera

% Esto es para poner anotaciones en cada uno de los ejes
title('Ejemplo de impresión de función tridimensional');
xlabel('sin(t)');
ylabel('cos(t)');
zlabel('t');




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%% GUARDADO DE DATOS %%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Se pueden guardar las variables ejecutadas en un archivo externo
% se guardan con formato de archivo .mat predeterminado

% guardar todas las variables
save Todaslasvariables;

% guardar solo algunas variables
save Soloalgunas s;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%% LECTURA DE DATOS %%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Se pueden leer archivos completos o variables sueltas
% en caso de leer una variable con el mismo nombre de otra variable
% existente, se sobreescribe el valor

%supongamos que no conocemos el valor de la variable s
clear s;

% leemos los datos del archivo donde está almacenada
load Soloalgunas;
load Todaslasvariables s; % se puede hacer de las dos formas, o implementar todas
% las variables o sólo algunas de dicho espacio de trabajo

disp(['La variable s sigue valiendo ', num2str(s)]);


