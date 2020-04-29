function Y_012_1 = pi_ekv_012_1(z_s1, y_sh1)
    y11 = 1 / z_s1 + y_sh1/2;
    y22 = y11;
    y12 = - 1 / z_s1;
    y21 = y12;
    
    Y_012_1 = [y11 y12; y21 y22];
end