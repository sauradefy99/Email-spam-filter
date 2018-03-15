function [C, sigma] = dataset3Params(X, y, Xval, yval)
%EX6PARAMS returns your choice of C and sigma 
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = EX6PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. This function to returns the optimal C and 
%   sigma based on a cross-validation set.
%

C = 3;
sigma = 0.1;


% Instructions: This function tests to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%

% Train the SVM


	%THIS WAS THE CODE FOR TESTING CORRECT C AND SIGMA WHICH IS NOT REQUIRED NOW. 
%{
model= svmTrain(X, y, C, @(x1, x2) gaussianKernel(x1, x2, sigma));
visualizeBoundary(X, y, model);

predictions=svmPredict(model,Xval);
err=mean(double(predictions~=yval));
printf("The error is : %f ", err);
%}

% =========================================================================

end
