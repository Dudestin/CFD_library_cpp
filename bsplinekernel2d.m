function [w,dw,ddw] = bsplinekernel2d(q,h)
%   return between 0 and 1
    absq = abs(q);
    ad = (10/(7.*pi.*h.^2));
    conditions1 = (0 <= absq) & (1 >= absq);
    conditions2 = (1 < absq) & (2 >= absq);
    w = ad.*((1-(3/2).*absq.^2+(3/4).*absq.^3).*conditions1+(1/4).*(2-absq).^3.*conditions2);
    dw = diff(w);
    ddw = diff(w,2);
end