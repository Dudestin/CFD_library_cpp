function [w,dw,ddw] = gaussiankernel2d(q,h)
%   return between 0 and 1
    absq = abs(q);
    ad = (1/(pi.*h.^2));
    w = ad.*exp(-absq.^2);
    dw = diff(w);
    ddw = diff(w,2);
end