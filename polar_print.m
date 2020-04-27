function out = polar_print(A)
    absA = abs(A);
    phaseA = angle(A)*180/pi;
    out = arrayfun(@(x, y) sprintf('%e < %f', x, y), absA, phaseA, 'uni', 0);
end