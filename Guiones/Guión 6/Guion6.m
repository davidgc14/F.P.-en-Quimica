clc;
clear all;

disp("\nSERIE DE TAYLOR\n\n");

x = input("Introduce el valor del exponente del numero e : ");

err = 0.00005;
aproximacion = 0;
n = 0;

while (abs(exp(x) - aproximacion) > err) || n < 50
    
    aproximacion += (x^n) / factorial(n);
    n++;

end

exp(x)
aproximacion

############################################################

disp("\n\nSUCESIÓN DE FIBO\n\n");

f = input("Introduzca el numero para comprobar si corresponde a la suc de fabi : ");

m1 = 0;
m2 = 1;

while m2 < f
    
    aux = m1 + m2;
    m1 = m2;
    m2 = aux;
    
end

if m2 == f
    disp("El numero pertenece a la sucesión");
else
    disp("El numero no pertenece");
end


