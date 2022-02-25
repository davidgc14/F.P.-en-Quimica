function y = cuantosPrimos(n)
    contador = 0;

    for i = 2 : n
        loes = true;
        for j = 2 : ceil(sqrt(i))
            if(mod(i,j) == 0)
                loes = false;
            end
        end

        if loes
            contador++;
        end
    end
    y = contador;

end