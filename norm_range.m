function xnorm = norm_range(x)

range = max(x) - min(x);
range(range == 0) = 1.0;
xnorm = bsxfun(@rdivide,bsxfun(@minus,x,mean(x)),(range ./ 2));

end
