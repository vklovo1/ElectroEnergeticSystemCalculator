function Y_12 = pi_ekv_off_diag(z_s0, z_s1)
    T = [0.333333333333333 + 0.000000000000000i 0.333333333333333 + 0.000000000000000i 0.333333333333333 + 0.000000000000000i;0.333333333333333 + 0.000000000000000i -0.166666666666667 + 0.288675134594813i -0.166666666666667 - 0.288675134594813i;0.333333333333333 + 0.000000000000000i -0.166666666666667 - 0.288675134594813i -0.166666666666667 + 0.288675134594813i];
    Y_12 = inv(T) * diag([-1/z_s0 -1/z_s1 -1/z_s1]) * T;
end