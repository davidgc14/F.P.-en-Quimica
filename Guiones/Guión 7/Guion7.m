clear all;
clc;

disp("\nEJERCICIO 7\n\n");

function H1 = Heatln(T,R)
    c = [-42.379 2.04901523 10.14333127 -0.22475541 -6.83783e-3 -5.481717e-2 1.22874e-3 8.5282e-4 -1.99e-6];
    solucion = c(1) + c(2).*T + c(3).*R + c(4).*T.*R + c(5).*T.^2 + c(6).*R.^2 + c(7).*R.*T.^2 + c(8).*T.*R.^2 + c(9).*((T.*R).^2);
    H1 = round(solucion);
end

fprintf("Temperatura de bochorno a 95F y 80/100 de humedad: %dF\n", Heatln(95,80));
fprintf("Temperatura de bochorno a 100F y 100/100 de humedad: %dF\n", Heatln(100,100));

##################################################################################
##################################################################################
##################################################################################

disp("\nEJERCICIO 10\nCriba de Eratóstenes\n");


function vector = Eratos(n)

    todos = [2:n];
    contador = 0;

    #

    for i = 2 : ceil(sqrt(n))
        cont_aux = 0;

        for j = 1 : (n - contador - 1)
            aux = todos(j + contador);

            if(mod(aux,i) == 0)
                todos(j + contador) = 0;
                cont_aux++;
            end
        end

        todos = sort(todos);
        contador += cont_aux;
    end

    vector = todos(contador+1 : n-1);
end


n = input("Introduzca numero entero: ");
Eratos(n)



