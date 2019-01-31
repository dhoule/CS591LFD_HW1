% Test of PLA:

% Adjust parameters as desired:
epochs = 10;
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
data0 = MakeLSdata(100, boundarynorm, attrmin, attrmax);

input("hit enter to continue\n");

printf("Running PLA to try to learn weight vector/boundary for dataset:\n")
printf("  epochs: %d\n\n",epochs)
fflush(1);

wlearned = RunPLA(epochs, data0(:,1:2), data0(:,3));
printf("Learned weight vector: ")
disp(wlearned)
wnorm = wnormalize(wlearned);
printf("Normalized weight vector: ")
disp(wnorm)

input("hit enter to continue\n");

printf("Validating learned weight vector on dataset:\n")
Validate(wnorm, data0(:,1:2), data0(:,3))

input("hit enter to plot dataset and learned boundary\n");

Plotdata(wnorm, data0(:,1:2), data0(:,3))

