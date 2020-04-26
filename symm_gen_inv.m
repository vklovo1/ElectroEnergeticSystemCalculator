function E_g = symm_gen_inv(E_ll, phi_a)
	a = exp(1i * ((2/3) * pi + phi_a));
    E_g = [E_ll*exp(1i*phi_a); E_ll*a; E_ll*a*a]; 
end