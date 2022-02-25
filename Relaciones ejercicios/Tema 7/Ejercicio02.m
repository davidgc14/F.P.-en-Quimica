function [v2,primos] = Ejercicio02(v1)
    contadorprimos = 0;
    for i = 1 : length(v1)
        contador = 0;
        for k = 2 : v1(i)
            if mod(v1(i),k) == 0
                contador++;
            end
        end
        v2(i) = contador;

        if v2(i) == 1
            contadorprimos++;
            primos(contadorprimos) = v1(i);
        end
    end
end