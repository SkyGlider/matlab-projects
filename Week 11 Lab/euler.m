% Name: Andrew Pang
% Date: 3 MAY 2019  
% Function for Week 11 : Euler's method

function [t,y] = euler(dydt,tspan,y0,h)
    %set yi as the value of y(0), at which t = 0
    yi = y0;
    y = [];
    
    for ti = tspan
        
        %set the final value of y to yi (since initial value y(0) of is known)
        yfinal = yi;
        %adds the yfinal to vector y
        y = [y yfinal];
        
        %operations
        slope1 = dydt(ti,yi);
        delta_y = h*slope1;
        yi = yi+ delta_y;
        
    end
    
    %returns the values
    t = tspan';
    y = y';
end
