% Name: Andrew Pang
% Date: 3 MAY 2019  
% Function for Week 8 :  Newton-Raphson Method
%
% INPUTS:
%  - f: function handle of the equation to be solved
%  - df: function handle of the derivative of the equation to be solved
%  - xi: the initial guess / the next guess x_i_+_1
%  - precision: stopping criteria determined by the user
% OUTPUT:
%  - root: the root of the equation
%  - iter: total iteration taken
%
function [root, iter] = newraph(f,df,xi,precision)
    %finds f(xi) and f'(xi)
    fxi = f(xi);
    gradi = df(xi);
    %iteration counter 
    y = 0;
    
    %checks if the value of f(xi) is greater than the precicion set
    %if it is, loops the code
    while (abs(fxi)) > precision
        %adds the iteration counter
        y= y +1;
        %finds the new value of xi
        %point where the tangent of old xi crosses teh x-axis
        xi_1 = xi - (fxi/gradi);
        xi = xi_1;
        %finds the new value of f(xi) and f'(xi)
        fxi = f(xi);
        gradi = df(xi);
    end
    
    %returns the root and iteration number
    root = xi;
    iter = y;
end