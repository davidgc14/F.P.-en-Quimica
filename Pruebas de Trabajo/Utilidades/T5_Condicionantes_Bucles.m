clc;
clear all;

a = 3;
b = 2;

# Usos de condicionantes y condicionantes múltiples

if a ~= 3
    disp('a no vale 3');
else
    disp('a vale 3');
end

if (a == 3) && (b == 2)
    disp('a vale 3');
else
    disp('a no vale 3');
end


# Usos de bucles for
v = zeros(1,10);

# Iteraciones individuales
for i = 1:10
    v(i) = i;
end

disp(v);


# Iteraciones con paso definido
for i = 1:10:101
    disp(i);
end


# Iteraciones en base a un vector
disp("Iteraciones en base a un vector");
s = [1,2,3,4,5,6,7,8,9,10];
for i = s 
    disp(i);
end

disp("Iteraciones en base a un vector diferente");
for i = [1,4,6,3]
    disp(i);
end


# Iteraciones en base a un bucle while

n = input('Introduzca un valor positivo: ');
while (n <= 0)
    n = input(' ERROR: Introduzca un valor positivo: ');
end

valor = input(' Introduzca un valor entre 0 y 14: ');
while ( (valor < 0) || (valor > 14) )
    valor = input(' ERROR: Introduzca un valor entre 0 y 14: ');
end

