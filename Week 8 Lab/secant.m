% Name: Andrew Pang
% Date: 3 MAY 2019  
% Function for Week 8 :  Secant Method
%
% INPUTS:
%  - f: function handle of the equation to be solved
%  - xi: the initial guess
%  - xi_1: the initial guess x_i_-_1
%  - precision: stopping criteria determined by the user
% OUTPUT:
%  - root: the root of the equation
%  - iter: total iteration taken
%
function [ root,iter ] = secant(f,xi,xi1,precision)

    %initialize
    n = 0;
    fxi1 = precision + 1;
    
    %iteration for secant method
    while abs(fxi1) > precision
        %cumulative counter
        n = n + 1;
        y = xi -f(xi)*(xi-xi1)/(f(xi)-f(xi1));
        %update xi as new xi1
        xi1 = xi;
        %update y as new xi
        xi = y;
        fxi1 = f(y);
    end
    
    %return values
    iter = n;
    root = y;
end