function Y_012_0 = pi_ekv_012_0_ygg(z_s0, y_sh0, n, z_gi, z_gj)
    n = abs(n);
    z_g = 3 * (z_gi + z_gj * n * n);
    z_s0_novo = z_s0 + z_g;
    y11 = 1 / z_s0_novo + y_sh0/2;
    y22 = y11;
    y12 = - 1 / z_s0_novo;
    y21 = y12;
    
    Y_012_0 = [y11 y12; y21 y22];
end