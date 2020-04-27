function y_sh0 = pi_ekv_0_ysh(i_0, U_n, S_n, P_fe)
    abs_ysh0 = (i_0 * S_n) / (100 * U_n * U_n);
    re_ysh0 = (P_fe) / (U_n * U_n);
    imag_ysh0 = imag_ar(abs_ysh0, re_ysh0);
    
    y_sh0 = complex(re_ysh0, - imag_ysh0);
end