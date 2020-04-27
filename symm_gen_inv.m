function E_g = symm_gen_inv(E_ll, phi_a)
	a = exp(1i * ((2/3) * pi));
    E_ll = E_ll / sqrt(3);
    E_g = [E_ll * exp(1i*phi_a); E_ll* a * exp(1i*phi_a); E_ll*a*a * exp(1i*phi_a)];
end