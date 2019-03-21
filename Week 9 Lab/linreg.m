% Name: Andrew Pang
% Date: 3 MAY 2019  
% Function for Week 9 :  Linear Regression

function [ yint, grad, err ] = linreg(x,y)

    %operations on variables x and y
    n = length(x);
    sum_xiyi = sum(x.*y);
    sum_xi2 = sum(x.^2);
    sum_xi = sum(x);
    sum_yi = sum(y);
    mean_xi = sum_xi/n;
    mean_yi = sum_yi/n;
    
    %gets the gradient(a1) and y-intercept(a0)
    grad = ( n*sum_xiyi - sum_xi*sum_yi )/ (n*sum_xi2-sum_xi^2);
    yint = (mean_yi) - grad*(mean_xi);
    
    %calcualtes sr and st
    sr = sum((y - yint - grad*x).^2);
    st = sum((y - mean_yi).^2);
    
    %finds the error(r^2)
    err = (st -sr)/st;

end