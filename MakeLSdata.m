function data = MakeLSdata (num, w, min, max)

% This function can be used to generate a linearly separable
% dataset for use with the learning algorithms.
% It generates random points within the specified region and
% labels them according to the weight vector boundary line.
%
% Parameters:
% num -- number of examples to create
% w -- weight vector representing classification boundary
% min -- min value for x/y indices
% max -- max value for x/y indices
%
% Returns:
% data set matrix with num rows like:
% x_1 x_2 y
%
% Prints out the number of +1 and -1 class examples
% that resulted in the dataset.

dims = size(w,2) - 1;
data = rand(num,dims) .* (max - min) + min;

values = w * [ones(num,1) data]';
classes = sign11(values);

numpos = size(find(classes>0),2);
numneg = size(find(classes<0),2);
fprintf('Dataset of size %d created with: +1: %d  -1: %d\n',num,numpos,numneg);

data = [data classes'];

end
