function Y_012 = ratio_pi_ekv_012(pi_ekv, n, c, sequence, pi_ekv_location)
    if pi_ekv_location == 1
        t1 = [1 n*exp(1i * d2r(c * 30)); n *exp( - 1i * d2r(c * 30)) n*n];
        t2 = [1 n *exp( - 1i * d2r(c * 30)); n*exp(1i * d2r(c * 30)) n*n];
    elseif pi_ekv_location == 2
        t1 = [n*n n *exp(  1i * d2r(c * 30)); n*exp(-1i * d2r(c * 30)) 1];
        t2 = [n*n n*exp(-1i * d2r(c * 30)); n *exp( 1i * d2r(c * 30)) 1];
    end
    Y_012 = eye(2);
    if sequence == 0
        Y_012 = pi_ekv.*t1; 
    elseif sequence == 1
        Y_012 = pi_ekv.*t1;
    elseif sequence == 2
        Y_012 = pi_ekv.*t2;
    end
end