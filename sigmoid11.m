function out = sigmoid11(in)

% Compute sigmoid function but scaled so -1 -> +1.

out = (2.0 ./ (1.0 + exp(-in))) - 1.0;

end
