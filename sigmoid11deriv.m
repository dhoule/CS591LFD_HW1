function out = sigmoid11deriv(in)

% Compute derivative of sigmoid function scaled to -1 -> +1.

% should be:  out = 2.0 .* sigmoidderiv(in);
out = 2.0 .* sigmoid(in) .* (1.0 - sigmoid(in));

end
