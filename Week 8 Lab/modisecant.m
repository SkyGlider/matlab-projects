% Name: Andrew Pang
% Date: 3 MAY 2019  
% Function for Week 8 :  Modified Secant Method

function [root, iter] = modisecant(f,xi,pert,precision)

    %finds f(xi) and f'(xi)
    fxi = f(xi);
 
    %iteration counter 
    y = 0;
    
    %checks if the value of f(xi) is greater than the precicion 
    %if it is, loops the code
    while (abs(fxi)) > precision
        
        %adds the iteration counter
        y= y +1;
        
        %point where the line crossing f(xi) and f(xi+pert) crosses x-axis
        xi_1 = xi - (pert*fxi)/(f(xi+pert)-f(xi));
        xi = xi_1;
        
        %finds the new value of f(xi)
        fxi = f(xi);
     
    end
    
    %returns the root and iteration number
    root = xi;
    iter = y;
end