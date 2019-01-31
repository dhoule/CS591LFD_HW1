function Plotdata (w, x, y)

% This function plots a dataset and the weight vector line
% to allow visualization of quality of learning.
%
% Parameters:
%  w -- learned weight vector
%  x -- matrix of data examples
%  y -- column vector of +1/-1 labels
%

minx1 = round(min(x(:,1)));
minx2 = round(min(x(:,2)));
maxx1 = round(max(x(:,1)));
maxx2 = round(max(x(:,2)));

linemin = -(w(2) * minx1 + w(1)) / w(3);
linemax = -(w(2) * maxx1 + w(1)) / w(3);

clf;
hold on;
plot(x(find(y>0),1),x(find(y>0),2),'+g',x(find(y<0),1),x(find(y<0),2),'+r');
axis([minx1 maxx1 minx2 maxx2]);
plot([minx1 maxx1],[linemin linemax]);

end
