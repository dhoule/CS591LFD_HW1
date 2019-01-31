function w = RunDLA_sigmoid (eta, epochs, x, y)

% This function can be used to run the DLA (Delta Rule)
% to learn a weight vector to classify data.
% It runs the DLA using the activation function: sigmoid.
%
% Parameters:
%  eta -- learning rate, should be 0 < eta <= 1.0
%  epochs -- number of iterations through dataset
%  x -- matrix of data examples
%  y -- column vector of +1/-1 labels
%
% Returns:
% learned weight vector representing classification boundary
%
% With data created by MakeSLdataset, call like:
% RunDLA_ident(0.1,10,data(:,1:2),data(:,3))
%

w= RunDLA(@sigmoid11,@sigmoid11deriv,eta,epochs,x,y);

end
