function num = adn(v)
%Función que recorre un vector de números enteros que representa la
%secuencia de ADN de una persona, identifica la secuencia del COVID y
%devuelve el número de repeticiones de esa secuencia.
%Argumentos de entrada:
%v: vector que representa la secuencia de ADN
%Argumentos de salida:
%num = número de veces que se repite la secuencia

busq = [1,4,1,3];
num = 0;
n = length(v);
for i = 1:n-4;
    if v(i)==busq(1)
        v(i);
        if v(i+1)==busq(2)
            v(i+1);
            if v(i+3)==busq(3)
                v(i+3);
                if v(i+4)==busq(4)
                    v(i+4);
                    num = num + 1;
                    i = i+1;
                end
                i = i +1;
            end
            i = i + 1;
        end
    end
end