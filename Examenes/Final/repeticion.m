function nveces = repeticion (v,num)
%Función que recibe un vector de valores numéricos que almacena valores
%enteros entre el 0 y el 100 y devuelve el número de veces que se repite un
%número entero recibido como parámetro.
%Argumentos de entrada:
%num: parámetro que se va a comprobar cuantas veces se repite
%v: vector de valores numéricos que almacena valores enteros entre 0 y 100
%Argumentos de salida:
%nveces: número de veces que se repite el parámetro num.

n = length(v);
nveces = 0;
for i = 1:n
    if v(i)==num
        nveces = nveces + 1;
    end
end
end
