function N = lairotcaf (X)
%Funcion que es la inversa de la funci�n factorial.
%Argumentos de entrada:
%X:n�mero entero 
%Argumentos de salida:
%N: n�mero entero cyuyo factorial es X

prod = 1;
i=0;
while ((i<=X)&&(prod~=X))
    i= i+1;
    prod = prod*i;
end
if (prod == X)
    N=i;
else
    N = -1;
end
end
  