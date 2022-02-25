clc;
clear all;

# Aproximación de Stirling de factorial de 20

function y = f(x)
    y = sqrt(2*pi*x)*(x/exp(1))^x;
endfunction;

fprintf("\nAproximacion de Stirling de factorial de 20: %f \n", f(20));
fprintf("\nValor real de factorial de 20: %d \n", factorial(20));


Error = (factorial(20) - f(20))/factorial(20);

disp("Error: ");
disp(Error);