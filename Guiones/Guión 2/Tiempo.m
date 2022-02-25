function y = Tiempo(instante, TempInic, TempSist, constante)

    k = constante;
    T0 = TempInic;
    Ts = TempSist;
    t = instante;

    y = Ts + (T0 - Ts) * exp(- k * t); 
end
    