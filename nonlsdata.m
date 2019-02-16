% File is used to make a non-LS dataset from 2 LS datasets.


boundary1 = [-3 1 3];
boundary2 = [1 2 3];
attrmin = -5;
attrmax = 5;
percent = .34;


boundarynorm1 = wnormalize(boundary1);
boundarynorm2 = wnormalize(boundary2);


% data1 = MakeLSdata(50, boundarynorm1, attrmin, attrmax);
% data2 = MakeLSdata(50, boundarynorm2, attrmin, attrmax);
data1 = MakenonLSdata(50, boundarynorm1, attrmin, attrmax, percent, 0);
data2 = MakenonLSdata(50, boundarynorm2, attrmin, attrmax, percent, 1);
data0 = [data1; data2];
data0


