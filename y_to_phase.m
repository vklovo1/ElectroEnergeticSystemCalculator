function Y_abc = y_to_phase(Y)
    T = [0.333333333333333 + 0.00000000000000i 0.333333333333333 + 0.00000000000000i 0.333333333333333 + 0.00000000000000i;0.333333333333333 + 0.00000000000000i -0.166666666666667 + 0.288675134594813i -0.166666666666667 - 0.288675134594813i;0.333333333333333 + 0.00000000000000i -0.166666666666667 - 0.288675134594813i -0.166666666666667 + 0.288675134594813i];
    Y_abc = inv(T) * Y * T;
end