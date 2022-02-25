function loEs = esPrimo(n)
    loEs = true;
    for i = 2 : ceil(sqrt(n))
        if mod(n,i) == 0
            loEs = false;
        end
    end
end