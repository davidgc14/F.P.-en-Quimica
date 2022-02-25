clc;
clear all;


k = 0.45;
T0 = 50;
Ts = 4;

x = 0:10;
imagen = zeros(1,10);

for i = 0 : length(imagen)
    imagen(i+1) = Tiempo(i, T0, Ts, k);
end

figure(1);
plot(x, imagen, "b", 3, imagen(4), "or;Solución;");