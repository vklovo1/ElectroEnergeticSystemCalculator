function Z_abc = imp_gr_wye(z, z_g)
    Z_abc = [z+z_g z_g z_g; z_g z+z_g z_g; z_g z_g z+z_g];
end