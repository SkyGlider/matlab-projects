% Name: Andrew Pang
% Date: 3 MAY 2019  
% Function for Week 8 :  False Position Method

function [ root, iter ] = falseposition(f,xl,xu,precision)
    %finds the value of fx(l) and fx(u)
    fxl = f(xl);
    fxu = f(xu);
    
    fxr = precision + 1;
    %iteration counter
    y = 0;
    
    %checks if the absolute value of f(xr) is more than the precision
    %if so, the code loops
    while abs(fxr) >  precision
        
        %adds to iteration counter
        y = y+1;
        %finds the position of xr 
        %x-coordinate where the tangent touches x-axis
        xr =  (fxu*xl - fxl*xu)/(fxu - fxl);
        %gets f(xr)
        fxr =f(xr);
        
        %if the value of f(xl) * f(xr) > 0, root is between xr and xu
        %so new xl = xr
        if fxl * fxr > 0
            xl = xr;
            fxl = fxr;
        %else, root is between xl and xr
        %so new xu = xr
        else
            xu = xr;
            fxu = fxr;
            
        end
            
    end
    
    %returns the root and iteration
    root = xr;
    iter = y;
    
    
end
