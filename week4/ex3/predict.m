function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a 
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%

% add x0=1 as the first column
X = [ones(size(X,1),1) X];

% a2 = g(Theta1*a1) %% here a1 = X
A2 = sigmoid(X * Theta1');

% add a2_0=1 as the first column
A2 = [ones(size(A2,1),1) A2];

% h0 = g(Theta2*a2)
h0 = sigmoid(A2 * Theta2');

% p will be the index of the max of every row
[minval, p] = max(h0, [], 2);







% =========================================================================


end
