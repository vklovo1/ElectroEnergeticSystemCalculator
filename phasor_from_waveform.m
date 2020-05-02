function Z = phasor_from_waveform(A, A_0, t_0, f)
    w = 2 * pi * f;
    phi = w * t_0;
    if A_0 > 0
        if phi < 0
            phi = pi + phi;
        end
        Z = A * exp(1i * phi);
    elseif A_0 <= 0
        if phi > 0
            phi = pi + phi;
        end
        Z = A * exp(1i * phi);
    end
end