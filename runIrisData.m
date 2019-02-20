% This file was used for question 3 of HW 1. It has been modified from start to finish. This is the final form.

epochs = 10000;
eta = 0.15;

data = importdata("iris_clone.data"); % The data file must be in the same directory

% TODO need to split into 2 sets.
  % Last 10 rows needs to be the test set for each of these
first = data(1:50,:);
second = data(51:100,:);
third = data(101:150,:);

temp1p = [first(1:40,:); second(1:40,:); first(41:50,:); second(41:50,:)];
temp1 = [norm_sigma(temp1p(:,1)) norm_sigma(temp1p(:,2)) norm_sigma(temp1p(:,3)) norm_sigma(temp1p(:,4))];
temp2p = [second(1:40,:); third(1:40,:); second(41:50,:); third(41:50,:)];
temp2 = [norm_sigma(temp2p(:,1)) norm_sigma(temp2p(:,2)) norm_sigma(temp2p(:,3)) norm_sigma(temp2p(:,4))];
temp3p = [first(1:40,:); third(1:40,:); first(41:50,:); third(41:50,:)];
temp3 = [norm_sigma(temp3p(:,1)) norm_sigma(temp3p(:,2)) norm_sigma(temp3p(:,3)) norm_sigma(temp3p(:,4))];
yValues = [(-1 * ones(40,1));  ones(40,1); (-1 * ones(10,1));  ones(10,1)];


% Run of the sepal data
printf("First & Second Sepal ------------\n")
% sepalLearned1 = RunPLA(epochs, temp1(:,1:2), yValues);
% sepalLearned1 = RunDLA_ident(eta, epochs, temp1(1:80,1:2), yValues(1:80,1));
% sepalLearned1 = RunDLA_sigmoid(eta, epochs, temp1(1:80,1:2), yValues(1:80,1));
sepalLearned1 = RunDLA_tanh(eta, epochs, temp1(1:80,1:2), yValues(1:80,1));
printf("Learned weight vector: ")
disp(sepalLearned1)
% sepalwnorm1 = wnormalize(sepalLearned1);
sepalwnorm1 = norm_sigma(sepalLearned1);
printf("Normalized weight vector: ")
disp(sepalwnorm1)
printf("Figure 1\n")
Validate(sepalwnorm1, temp1(:,1:2), yValues)
figure(1);
PlotIrisData(sepalwnorm1, temp1(:,1:2), yValues)
printf("---------------------------\n")
printf("Second & Third Sepal ------------\n")
% sepalLearned2 = RunPLA(epochs, temp2(:,1:2), yValues);
% sepalLearned2 = RunDLA_ident(eta, epochs, temp2(1:80,1:2), yValues(1:80,1));
% sepalLearned2 = RunDLA_sigmoid(eta, epochs, temp2(1:80,1:2), yValues(1:80,1));
sepalLearned2 = RunDLA_tanh(eta, epochs, temp2(1:80,1:2), yValues(1:80,1));
printf("Learned weight vector: ")
disp(sepalLearned2)
% sepalwnorm2 = wnormalize(sepalLearned2);
sepalwnorm2 = norm_sigma(sepalLearned2);
printf("Normalized weight vector: ")
disp(sepalwnorm2)
printf("Figure 2\n")
Validate(sepalwnorm2, temp2(:,1:2), yValues)
figure(2);
PlotIrisData(sepalwnorm2, temp2(:,1:2), yValues)
printf("---------------------------\n")
printf("First & Third Sepal -------------\n")
% sepalLearned3 = RunPLA(epochs, temp3(:,1:2), yValues);
% sepalLearned3 = RunDLA_ident(eta, epochs, temp3(1:80,1:2), yValues(1:80,1));
% sepalLearned3 = RunDLA_sigmoid(eta, epochs, temp3(1:80,1:2), yValues(1:80,1));
sepalLearned3 = RunDLA_tanh(eta, epochs, temp3(1:80,1:2), yValues(1:80,1));
printf("Learned weight vector: ")
disp(sepalLearned3)
% sepalwnorm3 = wnormalize(sepalLearned3);
sepalwnorm3 = norm_sigma(sepalLearned3);
printf("Normalized weight vector: ")
disp(sepalwnorm3)
printf("Figure 3\n")
Validate(sepalwnorm3, temp3(:,1:2), yValues)
figure(3);
PlotIrisData(sepalwnorm3, temp3(:,1:2), yValues)
printf("---------------------------\n\n\n")






printf("First & Second Petal ------------\n")
% Run of the petal data
% petalLearned1 = RunPLA(epochs, temp1(:,3:4), yValues);
% petalLearned1 = RunDLA_ident(eta, epochs, temp1(1:80,3:4), yValues(1:80,1));
% petalLearned1 = RunDLA_sigmoid(eta, epochs, temp1(1:80,3:4), yValues(1:80,1));
petalLearned1 = RunDLA_tanh(eta, epochs, temp1(1:80,3:4), yValues(1:80,1));
printf("Learned weight vector: ")
disp(petalLearned1)
% petalwnorm1 = wnormalize(petalLearned1);
petalwnorm1 = norm_sigma(petalLearned1);
printf("Normalized weight vector: ")
disp(petalwnorm1)
printf("Figure 4\n")
Validate(petalwnorm1, temp1(:,3:4), yValues)
figure(4);
PlotIrisData(petalwnorm1, temp1(:,3:4), yValues)
printf("---------------------------\n")
printf("Second & Third Petal ------------\n")
% petalLearned2 = RunPLA(epochs, temp2(:,3:4), yValues);
% petalLearned2 = RunDLA_ident(eta, epochs, temp2(1:80,3:4), yValues(1:80,1));
% petalLearned2 = RunDLA_sigmoid(eta, epochs, temp2(1:80,3:4), yValues(1:80,1));
petalLearned2 = RunDLA_tanh(eta, epochs, temp2(1:80,3:4), yValues(1:80,1));
printf("Learned weight vector: ")
disp(petalLearned2)
% petalwnorm2 = wnormalize(petalLearned2);
petalwnorm2 = norm_sigma(petalLearned2);
printf("Normalized weight vector: ")
disp(petalwnorm2)
printf("Figure 5\n")
Validate(petalwnorm2, temp2(:,3:4), yValues)
figure(5);
PlotIrisData(petalwnorm2, temp2(:,3:4), yValues)
printf("---------------------------\n")
printf("First & Third Petal -------------\n")
% petalLearned3 = RunPLA(epochs, temp3(:,3:4), yValues);
% petalLearned3 = RunDLA_ident(eta, epochs, temp3(1:80,3:4), yValues(1:80,1));
% petalLearned3 = RunDLA_sigmoid(eta, epochs, temp3(1:80,3:4), yValues(1:80,1));
petalLearned3 = RunDLA_tanh(eta, epochs, temp3(1:80,3:4), yValues(1:80,1));
printf("Learned weight vector: ")
disp(petalLearned3)
% petalwnorm3 = wnormalize(petalLearned3);
petalwnorm3 = norm_sigma(petalLearned3);
printf("Normalized weight vector: ")
disp(petalwnorm3)
printf("Figure 6\n")
Validate(petalwnorm3, temp3(:,3:4), yValues)
figure(6);
PlotIrisData(petalwnorm3, temp3(:,3:4), yValues)
printf("---------------------------\n")






