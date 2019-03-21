% Name: Andrew Pang
% Date: 19 APR 2019  
% Function for Week 8 :  Bisection Method

function  [ root, iter ] = bisection(f,xl,xu,precision)
    
    %finds the value of fx(l)
    fxl = f(xl);
    %iteration counter = 1 as first xr has been calculated
    y = 0;
    %gets the first xr value(midpoint)
    xr = NaN;
    
    %while loop to check if xr is close enough to precision
    while or((abs(f(xr)) > precision), isnan(xr))
        
        %adds the iteration counter
        y = y + 1;
        %gets the midpoint between xl and xu
        xr = 0.5*(xl + xu);
        %gets the midpoint's value in f(x)
        fxr = f(xr);
        
        %if f(xl) * f(xr) > 0, means the root is to the right of xr
        %so new xl = xr, and new f(xl) = f(xr)
        if fxl * fxr > 0
            xl = xr;
            fxl = fxr;
            
        %else, f(xl)*f(xr) < 0, means the root is between xl and xr
        %so new xu = xr
        else
            xu = xr;
        end  
        
    end
    
    %returns the outputs
    iter = y;
    root = xr;
end