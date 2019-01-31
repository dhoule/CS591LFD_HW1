function norm = wnormalize(w)

wsub = w(2:length(w));
factor = sqrt(dot(wsub,wsub));
norm = w ./ factor;

end
