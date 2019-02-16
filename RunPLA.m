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
  errors = zeros(1,1 : m); % Creates a row vector containing a number of columns between 1 and 'm'
  for i = 1 : m
    wsum = w*xplus(i,:)';
    activation = sign11(wsum);
    error = y(i) - activation;
    s = [s; [error w]];
    if (error ~= 0)
      errors(i) = error; % Assigns the current element to 'error' of the current pattern
      w = w + 0.5 .* error .* xplus(i,:);
    end
  end  
  % If the sum of the squars, of all elements, of 'errors' do not equal 0, there was an error 
    % somewhere. If it equals 0, there were no errors in the current epoch and the weights for 
    % all patterns have converged, and are now able to classify them correctly. There is no 
    % need to continue, so just get out of the "epoch" loop.
  if (sumsq(errors) == 0)
    printf("Number of epochs: %d\n", iter);
    break;
  end     
end

end
