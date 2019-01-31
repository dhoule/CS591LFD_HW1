function Validate (w, x, y)

% This function can be used to validate a weight vector
% that has been learned with PLA or DLA.
%
% Parameters:
%  w -- learned weight vector
%  x -- matrix of data examples
%  y -- column vector of +1/-1 labels
%
% Function prints out the number of examples
% in x that are correctly classified by w

values = w * [ones(size(x,1),1) x]';
classes = sign11(values);

numpos = size(find(classes(find(y>0))>0),2);
numneg = size(find(classes(find(y<0))<0),2);
correct = numpos + numneg;

fprintf('Examples correct: %d\n',correct);

end
