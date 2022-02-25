%COMENTARIOS GENERALES DEL PROGRAMA:
%Este script elimina los valores err�neos de medici�n de presiones
%de vapor y obtiene un modelo univariable de la presi�n de vapor respecto
%de la temperatura para dicho gas. Lo representa en una figura y obtiene el
%RMSE y R2 del modelo obtenido.

%LECTURA Y/O INICIALIZACION DE DATOS:
p=datos2(:,2); %presi�n de vapor
T=datos2(:,1); %Temperatura

%CALCULOS:
%En primer lugar debemos eliminar los valores err�neos, para poder llevar a
%cabo la regresi�n unnivarible.
outliers=find(p<0);
datos2(outliers,:)=[ ]; %esto elimina los valores err�neos de p y T.
pcorregida= datos2(:,2);
Tcorregida=datos2(:,1);
n=length(pcorregida); %n�mero de datos tras la correcci�n
plot(Tcorregida,pcorregida,'m*');
xlabel('Temperatura');
ylabel('Presion de vapor');
B=[Tcorregida,ones(n,1)]\pcorregida;
pEstimada=B(1)*Tcorregida + B(2);
RMSE = sqrt(sum((pEstimada-pcorregida).^2)/n);
R2=1-(sum((pcorregida-pEstimada).^2))/(sum((pcorregida-mean(p)).^2));

%SALIDA DE RESULTADOS:
hold on;
plot(Tcorregida,pEstimada,'c');
title('Modelo univariable de presi�n respecto a temperatura');
legend('Datos originales','modelo univariable');
disp(['El RMSE es: ',num2str(RMSE)]);
disp(['El R2 es: ',num2str(R2)]);
