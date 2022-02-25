# PRACTICA CON GRÁFICAS

x = linspace(-pi,pi);

figure(1);

plot(x,sin(x), 'b;Seno;');

hold on;
grid on;

xlabel('eje X');
ylabel('eje Y');

title('Prueba de uso de Gráficas');

plot(x, cos(x), 'r;Coseno;');

t = [-pi : pi/3 : pi];

plot(t, sin(t), 'ok;Puntos clave;', t, cos(t), 'ok;Puntos Clave;');

hold off;

figure(2);

plot(x,log(x), 'k');

