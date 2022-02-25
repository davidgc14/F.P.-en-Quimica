clc;
clear all;

disp("Ejercicio 18");

x = input("Valor para comprobar si pertenece a fibonacci: ");

m0 = 0;
m1 = 1;

while m1 < x
    aux = m1;
    m1 = m0 + m1;
    m0 = aux;
end

if m1 == x
    disp("El numero es fibonacci");
else
    disp("El numero no es fibonacci");
end




disp("Ejercicio 17");

n = input("Valor para calcular numero de digitos: ");
aux = n;

contador = 0;

while abs(n) >= 1
    n = n/10;
    contador++;
end

disp(["El numero tiene ", num2str(contador)," digitos"]);

