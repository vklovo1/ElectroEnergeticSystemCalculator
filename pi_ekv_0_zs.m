function z_s0 = pi_ekv_0_zs(u_k, U_n, S_n, P_cu0)
    abs_zs0 = (u_k * U_n * U_n) / (100 * S_n);
    re_zs0 = (U_n * U_n * P_cu0) / (S_n * S_n);
    imag_zs0 = imag_ar(abs_zs0, re_zs0);
    
    z_s0 = complex(re_zs0, imag_zs0);
end