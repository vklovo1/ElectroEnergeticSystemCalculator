function Z_eq = calc_parallel(z)
temp = 0 + 0i;

for i = 1 : size(z,2)
    temp = temp + 1 / z(1,i);
end

Z_eq = 1 / temp;

end