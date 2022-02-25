function N = lairotcaf (X)
%Funcion que es la inversa de la función factorial.
%Argumentos de entrada:
%X:número entero 
%Argumentos de salida:
%N: número entero cyuyo factorial es X

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
  