function w = RunPLA (epochs, x, y)

% This function can be used to run the PLA
% to learn a weight vector to classify data.
%
% Parameters:
%  epochs -- number of iterations through dataset
%  x -- matrix of data examples
%  y -- column vector of +1/-1 labels
%
% Returns:
% learned weight vector representing classification boundary
% (weight vector is normalized to unit length)
%
% Function prints out the number of examples
% in x that are correctly classified by w
%
% With data created by MakeSLdataset, call like:
% RunPLA(10,data(:,1:2),data(:,3))

dim = size(x,2);
m = size(x,1);
if size(y,1) ~= m
  fprintf('x and y sizes do not match\n')
  quit
end

xplus = [ones(m, 1) x];
w = zeros(1,dim+1);
global s = [];

for iter = 1 : epochs
  % Go through all data in training set:
  for i = 1 : m
    wsum = w*xplus(i,:)';
    activation = sign11(wsum);
    error = y(i) - activation;
    s = [s; [error w]];
    if (error ~= 0)
      w = w + 0.5 .* error .* xplus(i,:);
    end
  end      
end

end
