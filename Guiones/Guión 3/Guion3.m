clc;
clear all;

datos = [8.4, 6.8, 7.5, 5.4, 8.2, 5.4, 7.5, 8.6, 8.4, 6.8, 8, 7, 6.6, 6.4, 5, 5.5, 7.2, 5.5, 6.4, 8, 7.3, 6.7, 7.4, 5.1, 7.3, 7.2, 5.3, 8.4, 5.5, 7.8];

menor6 = 0;
mayor8 = 0;
entre6y8 = 0;

for i = 1 : length(datos)
    if datos(i) < 6
        menor6 ++;
    elseif datos(i) > 8
        mayor8 ++;
    else
        entre6y8 ++;
    end
end

fprintf("El numero de datos menor que 6 son %d\nEl numero de datos mayor que 8 son %d\nEl numero de datos entre 6 y 8 son %d\n", menor6, mayor8, entre6y8);

fprintf("\n\n\nSegundo ejercicio\n\n");

M = [1 2 1 0 1;
    2 -4 -1 1 1;
    0 -2 4 1 -6;
    -3 0 0 1 -2;
    1 1 1 3 8];

b = [1 -2 -6 4 0]';

x = M\b;

disp('La solución del sistema es : ');
disp(x);