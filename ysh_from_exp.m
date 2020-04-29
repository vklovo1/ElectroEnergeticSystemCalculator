function y_sh0 = ysh_from_exp(i_0, U_n, S_n, P_fe)
    abs_ysh0 = (i_0 * S_n) / (100 * U_n * U_n);
    if abs_ysh0 == 0
        y_sh0 = complex(0, 0);
    else
        re_ysh0 = (P_fe) / (U_n * U_n);
        imag_ysh0 = imag_ar(abs_ysh0, re_ysh0);
    
        y_sh0 = complex(re_ysh0, - imag_ysh0);
    end
end