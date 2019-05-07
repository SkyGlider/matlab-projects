% Name: Andrew Pang
% Date: 3 MAY 2019  
% Function for Week 9 :  Linear Regression SGR

%
% INPUTS
% x = x-values
% y = y-values
% n = order of model
%
% OUTPUT
% F = nonlinear coefficient
% V = nonlinear coefficient
% yint = y - intercept of linear graph
% grad = gradient of the linear graph
% r2 = r^2 error value

function [ F, V, yint, grad, r2 ] =linregrsgr(x,y,n)
    %number of elements
    num = length(x);
    
    % linearization equation :
    % a = - v^n*a*(1/m^n) + F
    % gradient = v^n
    % y = a
    % x = -a/m^n 
    % y-int = F
    
    %performs operation to find new x_values and y_values
    x_vals = (-1*y)./(x.^n);
    y_vals = y;
    
    %variations of x_vals and y_vals
    sum_xiyi = sum(x_vals.*y_vals);
    sum_xi2 = sum(x_vals.^2);
    sum_xi = sum(x_vals);
    sum_yi = sum(y_vals);
    mean_xi = sum_xi/num;
    mean_yi = sum_yi/num;
    
    %finds the gradient (a1) and y-intercept(a0)
    grad = ( num*sum_xiyi - sum_xi*sum_yi )/ (num*sum_xi2-sum_xi^2);
    yint = (mean_yi) - grad*(mean_xi);
    
    %finds st and sr
    sr = sum((y_vals - yint - grad*x_vals).^2);
    st = sum((y_vals - mean_yi).^2);
    
    %gets the error(r^2)
    r2 = (st -sr)/st;
    
    %returns F and V
    F = yint;
    V = grad^(1/n);
    
end