function [I_g, Y_g] = norton_gen(E_g, Z_g)
    Y_g = inv(Z_g);
    I_g = Y_g * E_g;
end