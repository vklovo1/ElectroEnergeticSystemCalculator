function Z_ekv = calc_resistance(n, type)
%type - S for series and P for parallel
%n - number of blocks of elements connected in "type" connection
%each block (out of n) can consist of many elements connected in not-type
prompt = 'Enter impedance: \n';
Z_ekv = 0 + 0i;
if type == 'S'
    for i = 1 : n
        z = input(prompt);
        if size(z,2) > 1
            Z_ekv = Z_ekv + calc_parallel(z);
        else
            Z_ekv = Z_ekv + z;
        end
    end
elseif type == 'P'
    temp = 0 + 0i;
    for i = 1 : n
        z = input(prompt);
        if size(z,2) > 1
            disp(sum(z(1)))
            temp = temp + 1 / sum(z(1,:));
        else
            temp = temp + 1 / z;
        end
    end
    Z_ekv = 1 / temp;
end
end