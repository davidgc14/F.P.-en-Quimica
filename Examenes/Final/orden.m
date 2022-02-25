function v2 = orden(v)
%Función que ordena los valores del vector v1 y elimina los valores
%repetidos.
%Argumentos de entrada:
%v: vector a ordenar
%Argumentos de salida:
%v2: vector ordenado

n = length(v);
for i = 1:n-1
    v(i);
    for j = i+1:n
        if v(i)>v(j)
            v(i);
        else
            aux = v(j);
            v(j)=v(i);
            v(i)=aux;
        end
    end
end
v2 = v;
end
        