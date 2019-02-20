function xnorm = norm_sigma(x)

xnorm = bsxfun(@rdivide,bsxfun(@minus,x,mean(x)),stdnon0(x,1));


function sigma = stdnon0(x)

sigma = std(x,1);
sigma(sigma == 0) = 1.0;

endfunction

endfunction
