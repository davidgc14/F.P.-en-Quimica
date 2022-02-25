function matriz = Ejercicio04(vector)

    aux = sort(vector);
    contador = 1;
    elementosDistintos = 1;
    while contador < length(aux)
        repeticiones = 1;
        while contador < length(aux) && aux(contador) == aux(contador + 1)
            repeticiones++;
            contador++;
        end
        matriz(1,elementosDistintos) = aux(contador);
        matriz(2,elementosDistintos) = repeticiones; 

        contador++;
        elementosDistintos++;       
    end
end