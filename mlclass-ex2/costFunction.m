function [J, grad] = costFunction(theta, X, y)
%   Computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost

    % Initialize some useful values
    m = length(y); %#ok<NASGU> % number of training examples

    % You need to return the following variables correctly
    J = 0; %#ok<NASGU>
    grad = zeros(size(theta)); %#ok<NASGU>

    % Instructions: Compute the cost of a particular choice of theta.
    %               You should set J to the cost.
    %               Compute the partial derivatives and set grad to the partial
    %               derivatives of the cost w.r.t. each parameter in theta
    %
    % Note: grad should have the same dimensions as theta

    sig = sigmoid(X * theta);   % hypothesis logistic regression
    
    J = mean((-y .* log(sig)) - ((1 - y) .* log(1 - sig))); % cost function logistic regression
    
    % sig_y = sig - y;                      % For Octave
    sig_y = repmat((sig - y),1,size(X,2));  % For Matlab
    grad = mean(sig_y .* X);    % gradient

end
