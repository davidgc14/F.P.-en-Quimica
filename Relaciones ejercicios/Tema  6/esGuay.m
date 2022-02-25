function loEs = esGuay(n)
    loEs = false;
    sumandos = 2;
    if n == 1
        loEs = true;
    elseif n > 2
        while sumandos < n && !loEs
            for i = 1 : n-sumandos
                suma = 0;
                for k = i : sumandos
                    suma += k;
                    if suma == n
                        loEs = true;
                    end
                end
            end
            sumandos++;
        end
    end
end