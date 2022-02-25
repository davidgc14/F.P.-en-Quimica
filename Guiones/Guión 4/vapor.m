function y = vapor(C)
    a = 35154;
    b = 8.6931;
    
    K = C - 273.15;

    y = b - (0.072323 .* a) ./ K;
end