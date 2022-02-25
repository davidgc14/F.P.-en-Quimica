function loes = esPrimo(x)
    
    maximo = ceil(sqrt(x));
    loes = true;

    contador = 2;
    while (contador <= maximo || loes)
        if(mod(x,contador) == 0)
            loes = false;
        end
        contador++;
    end
end