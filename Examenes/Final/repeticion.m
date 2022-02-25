function nveces = repeticion (v,num)
%Funci�n que recibe un vector de valores num�ricos que almacena valores
%enteros entre el 0 y el 100 y devuelve el n�mero de veces que se repite un
%n�mero entero recibido como par�metro.
%Argumentos de entrada:
%num: par�metro que se va a comprobar cuantas veces se repite
%v: vector de valores num�ricos que almacena valores enteros entre 0 y 100
%Argumentos de salida:
%nveces: n�mero de veces que se repite el par�metro num.

n = length(v);
nveces = 0;
for i = 1:n
    if v(i)==num
        nveces = nveces + 1;
    end
end
end
