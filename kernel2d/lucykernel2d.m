function [m,dm,ddm] = lucykernel2d(q,h)
%   return between 0 and 1
    absq = abs(q);
    ad = (5/(pi.*h.^2));
    conditions = (absq <= 1) & (absq >= 0);
    m = ad.*((1+3.*absq).*(1-absq).^3.*conditions);
    dm = diff(m);
    ddm = diff(m,2);
end