function [w,dw,ddw] = wendlandkernel2d(q,h)
%   return between 0 and 1
    absq = abs(q);
    ad = (7/4.*pi.*h.^2);
    conditions1 = (0 <= absq) & (2 >= absq);
    w = ad.*((1-absq/2).^4.*(1+2.*absq).*conditions1);
    dw = diff(w);
    ddw = diff(w,2);
end