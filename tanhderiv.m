function out = tanhderiv(z)

% Compute derivative of tanh function.

out = 1.0 - (tanh(z) .^ 2);

end
