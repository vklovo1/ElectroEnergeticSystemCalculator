function Y = line_pi_ekv(z_s0, y_sh0, z_s1, y_sh1)
    diag = line_pi_ekv_diag(z_s0, y_sh0, z_s1, y_sh1);
    off_diag = pi_ekv_off_diag(z_s0, z_s1);
    Y = [diag off_diag; off_diag diag];
end
