function [w,dw,ddw] = gaussiankernel2d(q)
%   return between 0 and 1
    absq = abs(q);
    w = (1/(pi.*h.^2)).*exp(-absq.^2);
    dw = diff(w);
    ddw = diff(w,2);
end