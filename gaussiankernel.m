function [w,dw,ddw] = gaussiankernel(q)
%   return between 0 and 1
    absq = abs(q);
    w = exp(-absq.^2);
    dw = diff(w);
    ddw = diff(w,2);
end