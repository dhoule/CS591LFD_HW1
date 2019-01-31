function out = sign11(in)

% Apply sign() to get +1/0/-1, but convert 0's to 1's
% so have only +1/-1 as required for y (target value).
% So >=0 -> +1 and <0 -> -1

  pos = (in >= 0);
  out = sign(pos - 0.1);

end
