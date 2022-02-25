function v2 = Ejercicio01(v1)
    for i = 1 : length(v1)
        contador = 0;
        for k = 2 : v1(i)
            if mod(v1(i),k) == 0
                contador++;
            end
        end
        v2(i) = contador;
    end
end