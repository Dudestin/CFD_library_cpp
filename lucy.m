function m = lucy(q)
%   return between 0 and 1
    absq = abs(q);
    conditions = (absq <= 1) & (absq >= 0);
    m = (1+3*absq)*(1-absq)^3.*conditions;
end