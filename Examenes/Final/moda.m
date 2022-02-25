function numero = moda(v)
%Función que recibe un vector de valores numéricos enteros que almacena
%valores entre el 0 y 100 y devuelve el valor del elemento que más veces se
%repite.
%Argumentos de entrada:
%v: vector de valores numéricos enteros que almacena valores entre el 0 y 100
%Argumentos de salida:
%numero = valor del elemento que más veces se repite

n = length(v);
nveces = zeros (1,n);
j = 0;
for x = [1:100]
    j = j + 1;
    cuenta = 0;
    n = length(v);
    for i =1:n
        if v(i)==x
            cuenta = cuenta + 1;
        end
    end
    nveces(j)=cuenta;
end

valor = nveces(1);
for i =2:length(nveces)
    if nveces(i)>valor
        valor = v(i);
        numero = i;
    end
end
end
        