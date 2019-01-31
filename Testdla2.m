% Test of DLA with sigmoid activation function:

% Adjust parameters as desired:
epochs = 10;
eta = 0.1;
boundary = [1 2 3];
attrmin = -5;
attrmax = 5;

boundarynorm = wnormalize(boundary);

printf("Making a 100-element LS dataset:\n")
printf("  Boundary vector: ")
disp(boundary)
printf("  Normalized vector: ")
disp(boundarynorm)
printf("  Attributes range: %d to %d\n\n",attrmin,attrmax)
data2 = MakeLSdata(100, boundarynorm, attrmin, attrmax);

input("hit enter to continue\n");

printf("Running DLA (sigmoid) to learn weight vector/boundary for dataset:\n")
printf("  eta: %4.2f\n  epochs: %d\n\n",eta,epochs)
fflush(1);

wlearned = RunDLA_sigmoid(eta, epochs, data2(:,1:2), data2(:,3));
printf("Learned weight vector: ")
disp(wlearned)
wnorm = wnormalize(wlearned);
printf("Normalized weight vector: ")
disp(wnorm)

input("hit enter to continue\n");

printf("Validating learned weight vector on dataset:\n")
Validate(wnorm, data2(:,1:2), data2(:,3))

input("hit enter to plot dataset and learned boundary\n");

Plotdata(wnorm, data2(:,1:2), data2(:,3))

