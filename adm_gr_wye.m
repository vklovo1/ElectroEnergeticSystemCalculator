function Y_abc = adm_gr_wye(z, z_g)
    Y_abc = inv([z+z_g z_g z_g; z_g z+z_g z_g; z_g z_g z+z_g]);
end