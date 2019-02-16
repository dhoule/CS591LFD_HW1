% This file was used for question 3 of HW 1. It has been modified from start to finish. This is the final form.

epochs = 100;
eta = 0.1;

data = importdata("iris_clone.data"); % The data file must be in the same directory

first = data(1:50,:);
second = data(51:100,:);
third = data(101:150,:);


temp1 = [first; second];
temp2 = [second; third];
temp3 = [first; third];
yValues = [(-1 * ones(50,1));  ones(50,1)];

% Run of the sepal data
printf("First & Second Sepal ------------\n")
% sepalLearned1 = RunPLA(epochs, temp1(:,1:2), yValues);
% sepalLearned1 = RunDLA_ident(eta, epochs, temp1(:,1:2), yValues);
% sepalLearned1 = RunDLA_sigmoid(eta, epochs, temp1(:,1:2), yValues);
sepalLearned1 = RunDLA_tanh(eta, epochs, temp1(:,1:2), yValues);
printf("Learned weight vector: ")
disp(sepalLearned1)
sepalwnorm1 = wnormalize(sepalLearned1);
printf("Normalized weight vector: ")
disp(sepalwnorm1)
printf("Figure 1\n")
Validate(sepalwnorm1, temp1(:,1:2), yValues)
figure(1);
PlotIrisData(sepalwnorm1, temp1(:,1:2), yValues)
printf("---------------------------\n")
printf("Second & Third Sepal ------------\n")
% sepalLearned2 = RunPLA(epochs, temp2(:,1:2), yValues);
% sepalLearned2 = RunDLA_ident(eta, epochs, temp2(:,1:2), yValues);
% sepalLearned2 = RunDLA_sigmoid(eta, epochs, temp2(:,1:2), yValues);
sepalLearned2 = RunDLA_tanh(eta, epochs, temp2(:,1:2), yValues);
printf("Learned weight vector: ")
disp(sepalLearned2)
sepalwnorm2 = wnormalize(sepalLearned2);
printf("Normalized weight vector: ")
disp(sepalwnorm2)
printf("Figure 2\n")
Validate(sepalwnorm2, temp2(:,1:2), yValues)
figure(2);
PlotIrisData(sepalwnorm2, temp2(:,1:2), yValues)
printf("---------------------------\n")
printf("First & Third Sepal -------------\n")
% sepalLearned3 = RunPLA(epochs, temp3(:,1:2), yValues);
% sepalLearned3 = RunDLA_ident(eta, epochs, temp3(:,1:2), yValues);
% sepalLearned3 = RunDLA_sigmoid(eta, epochs, temp3(:,1:2), yValues);
sepalLearned3 = RunDLA_tanh(eta, epochs, temp3(:,1:2), yValues);
printf("Learned weight vector: ")
disp(sepalLearned3)
sepalwnorm3 = wnormalize(sepalLearned3);
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
% petalLearned1 = RunDLA_ident(eta, epochs, temp1(:,3:4), yValues);
% petalLearned1 = RunDLA_sigmoid(eta, epochs, temp1(:,3:4), yValues);
petalLearned1 = RunDLA_tanh(eta, epochs, temp1(:,3:4), yValues);
printf("Learned weight vector: ")
disp(petalLearned1)
petalwnorm1 = wnormalize(petalLearned1);
printf("Normalized weight vector: ")
disp(petalwnorm1)
printf("Figure 4\n")
Validate(petalwnorm1, temp1(:,3:4), yValues)
figure(4);
PlotIrisData(petalwnorm1, temp1(:,3:4), yValues)
printf("---------------------------\n")
printf("Second & Third Petal ------------\n")
% petalLearned2 = RunPLA(epochs, temp2(:,3:4), yValues);
% petalLearned2 = RunDLA_ident(eta, epochs, temp2(:,3:4), yValues);
% petalLearned2 = RunDLA_sigmoid(eta, epochs, temp2(:,3:4), yValues);
petalLearned2 = RunDLA_tanh(eta, epochs, temp2(:,3:4), yValues);
printf("Learned weight vector: ")
disp(petalLearned2)
petalwnorm2 = wnormalize(petalLearned2);
printf("Normalized weight vector: ")
disp(petalwnorm2)
printf("Figure 5\n")
Validate(petalwnorm2, temp2(:,3:4), yValues)
figure(5);
PlotIrisData(petalwnorm2, temp2(:,3:4), yValues)
printf("---------------------------\n")
printf("First & Third Petal -------------\n")
% petalLearned3 = RunPLA(epochs, temp3(:,3:4), yValues);
% petalLearned3 = RunDLA_ident(eta, epochs, temp3(:,3:4), yValues);
% petalLearned3 = RunDLA_sigmoid(eta, epochs, temp3(:,3:4), yValues);
petalLearned3 = RunDLA_tanh(eta, epochs, temp3(:,3:4), yValues);
printf("Learned weight vector: ")
disp(petalLearned3)
petalwnorm3 = wnormalize(petalLearned3);
printf("Normalized weight vector: ")
disp(petalwnorm3)
printf("Figure 6\n")
Validate(petalwnorm3, temp3(:,3:4), yValues)
figure(6);
PlotIrisData(petalwnorm3, temp3(:,3:4), yValues)
printf("---------------------------\n")






