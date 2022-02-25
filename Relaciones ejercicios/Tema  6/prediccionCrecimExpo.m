function y = prediccionCrecimExpo(A0, At1, t1, t)
    k = log(At1./A0) ./ t1;
    y = A0 .* exp(t .* k);
end