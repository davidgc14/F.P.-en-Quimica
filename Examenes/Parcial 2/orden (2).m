function raizcuadrada = orden(v)
%Funci�n que ordena los valores de un vector en funci�n de su ra�z
%cuadrada.
%Argumentos de entrada:
%v: vector que se va a ordenar
%Argumentos de salida:
%raizcuadrada: vector v ordenado en funci�n de su raiz cuadrada

n = length(v);
for j = 1:n
    for i = (j+1):n
        if sqrt(v(j))<sqrt(v(i))
            v(j)= sqrt(v(j));
        else
            aux = sqrt(v(j));
            v(j)=sqrt(v(i));
            v(i)=aux;
        end
    end
end
raizcuadrada = v;
           