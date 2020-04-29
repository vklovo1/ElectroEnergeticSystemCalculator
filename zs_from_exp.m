function z_s0 = zs_from_exp(u_k, U_n, S_n, P_cu)
    abs_zs0 = (u_k * U_n * U_n) / (100 * S_n);
    
    if abs_zs0 == 0
        z_s0 = complex(0,0);
    else
        re_zs0 = (U_n * U_n * P_cu) / (S_n * S_n);
        imag_zs0 = imag_ar(abs_zs0, re_zs0);
    
        z_s0 = complex(re_zs0, imag_zs0);
    end
end