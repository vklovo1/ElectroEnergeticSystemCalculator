function [C_V C_I] = cv_ci_from_delta_conn(conn_numb)
    %vanjske struje i struje kroz namotaje umjerene u istom smjeru, 
    %kao na predavanju
    %conn_numb je na slajdu 18 predavanja o transformatorima
    if conn_numb == 1
        C_V = [1 0 -1; -1 1 0; 0 -1 1];
        C_I = [1 -1 0; 0 1 -1; -1 0 1];
    elseif conn_numb == 3
        C_V = [0 1 -1; -1 0 1; 1 -1 0];
        C_I = [0 -1 1; 1 0 -1; -1 1 0];
    elseif conn_numb == 5
        C_V = [-1 1 0; 0 -1 1; 1 0 -1];
        C_I = [-1 0 1; 1 -1 0; 0 1 -1];
    elseif conn_numb == 7
        C_I = [-1 1 0; 0 -1 1; 1 0 -1];
        C_V = [-1 0 1; 1 -1 0; 0 1 -1];
    elseif conn_numb == 9
        C_I = [0 1 -1; -1 0 1; 1 -1 0];
        C_V = [0 -1 1; 1 0 -1; -1 1 0];
    elseif conn_numb == 11
        C_I = [1 0 -1; -1 1 0; 0 -1 1];
        C_V = [1 -1 0; 0 1 -1; -1 0 1];
    end
end