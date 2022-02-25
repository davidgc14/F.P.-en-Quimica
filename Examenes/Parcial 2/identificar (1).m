function indices = identificar (v,maximo,minimo)
%Funci�n que recibe un vector de valores y devuelve los �ndices de los
%valoress del vector que se encuentran entre dos valores tomados por dicha
%funci�n.
%Argumentos de entrada:
%v: vector de valores que representa el grado de eficacia de una enzima
%maximo: m�ximo valor permitido
%minimo: m�nimo valor permitido
%Argumentos de salida:
%indices: �ndices de los valores del vector que se encuentran entre maximo
%y minimo

n = length(v);
j = 0;
for i = 1:n
    if ((v(i)>=minimo)&&(v(i)<=maximo))
        j = j + 1;
        indices(j) = i;
    end
end
end