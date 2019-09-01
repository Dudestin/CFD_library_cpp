function [m,dm,ddm] = lucy(q)
%   return between 0 and 1
    absq = abs(q);
    conditions = (absq <= 1) & (absq >= 0);
    m = (1+3.*absq).*(1-absq).^3.*conditions;
    dm = diff(m);
    ddm = diff(m,2);
end