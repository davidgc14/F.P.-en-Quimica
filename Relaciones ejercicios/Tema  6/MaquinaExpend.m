function vuelta = MaquinaExpend(vMonedas, aPagar)
    banco = [2, 1, 0.5, 0.2, 0.1, 0.05, 0.02, 0.01]; 
    ingresado = sum(vMonedas .* banco);

    resto = ingresado - aPagar;

    for i = 1 : length(banco)
        vuelta(i) = floor(resto / banco(i));
        resto = mod(resto,banco(i)); 
    end


end