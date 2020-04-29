function Y_012_0 = pi_ekv_012_0_ygd(z_s0, z_g)
    y_sh = inv(3*z_g + z_s0);
    Y_012_0 = [y_sh 0; 0 0];
end