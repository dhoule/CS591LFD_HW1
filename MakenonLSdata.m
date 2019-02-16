function data = MakenonLSdata (total, w, min, max, percent, above)

% This function can be used to generate a linearly separable
% dataset for use with the learning algorithms.
% It generates random points within the specified region and
% labels them according to the weight vector boundary line.
%
% Parameters:
% total -- number of examples to create
% w -- weight vector representing classification boundary
% min -- min value for x/y indices
% max -- max value for x/y indices
% percent -- percentage of values that needs to be a certain place
% above -- (1,0) boolean to determine if the forced values are above or below the line
%
% Returns:
% data set matrix with total rows like:
% x_1 x_2 y
%
% Prints out the number of +1 and -1 class examples
% that resulted in the dataset.


sub = total * percent; % This is the actual percentage of the total number of elements to be made.

data = rand(total,1) .* (max - min) + min; % create column of X values
data = [data  ones(total,1)]; % Pads a column of 1s on the right side

% Need to find the Y values
q = 0;
for i = 1:total
	% this other becomes the min or max for a random number
	other = ( ( w(2) * data(i,1) ) + w(1) ) / w(3);
	% The value of 'above' determines which code set is used
	if (above == 1) 
		if q < sub
			y = rand(1,1) .* (max - other) + other;
		else
			y = rand(1,1) .* (other - min) + min;
		end
	else
		if q < sub
			y = rand(1,1) .* (other - min) + min;
		else
			y = rand(1,1) .* (max - other) + other;
		end
	end
	q = q + 1;
	data(i,2) = y; % set the X2 value
end	


values = w * [ones(total,1) data]';
classes = sign11(values);

numpos = size(find(classes>0),2);
numneg = size(find(classes<0),2);

data = [data classes'];

end