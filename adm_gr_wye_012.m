function Y = adm_gr_wye_012(z, z_g)
    T = [1.000000000000000 - 0.000000000000000i 1.000000000000000 + 0.000000000000000i 1.000000000000000 + 0.000000000000000i;1.000000000000000 + 0.000000000000000i -0.500000000000000 - 0.866025403784439i -0.500000000000001 + 0.866025403784439i;1.000000000000000 + 0.000000000000000i -0.500000000000000 + 0.866025403784439i -0.500000000000000 - 0.866025403784439i];
    Y = T * adm_gr_wye(z, z_g) * inv(T);
end