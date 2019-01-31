function w = RunDLA (activation_fun, derivative_fun, eta, epochs, x, y)

% This function can be used to run the DLA (Delta Rule)
% to learn a weight vector to classify data.
%
% Parameters:
%  activation_fun -- g() in Delta Rule
%  derivative_fun -- g'() in Delta Rule
%  eta -- learning rate, should be 0 < eta <= 1.0
%  epochs -- number of iterations through dataset
%  x -- matrix of data examples
%  y -- column vector of +1/-1 labels
%
% Returns:
% learned weight vector representing classification boundary
%
% With data created by MakeSLdataset, call like:
% RunDLA(@tanh,@tanhderiv,0.1,100,data(:,1:2),data(:,3))
%
% Note that this is what is known as a higher-order function:
% it takes functions as arguments.  In Matlab/Octave functions
% are passed as arguments by prefixing them with "@".
%
% The combinations of activation_fun and derivative_fun that
% correspond to the three versions in the Perceptron slides are:
% (1) @ident @identderiv
% (2) @tanh @tanhderiv
% (3) @sigmoid11 @sigmoid11deriv

dim = size(x,2);
m = size(x,1);
if size(y,1) ~= m
  fprintf('x and y sizes do not match\n')
  return
end

xplus = [ones(m, 1) x];
#w = zeros(1,dim+1);  %zeros don't work with sigmoid
w = ones(1,dim+1);

for iter = 1 : epochs
  % Go through all data in training set:
  for i = 1 : m
    wsum = w*xplus(i,:)';
    activation = activation_fun(wsum);
    derivative = derivative_fun(wsum);
    error = y(i) - activation;
    w = w + eta .* error .* derivative .* xplus(i,:);
  end      
end

end

