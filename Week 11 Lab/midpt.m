% Name: Andrew Pang
% Date: 3 MAY 2019  
% Function for Week 11 : Midpoint method

function [t,y] = midpt(dydt,tspan,y0,h)

    %set yi as the value of y(0), at which t = 0
    yi = y0;
    %gets h/2 value
    h_2 = h/2;
    y = [];
    
    for ti = tspan
        
        %set the final value of y to yi (since initial value y(0) of is known)
        yfinal = yi;
        %adds the yfinal to vector y
        y = [y yfinal];
        %operations
        y_2 = yi + h_2*(dydt(ti,yi));
        slope2 = dydt(ti+h_2,y_2);
        yi = yi+ h*slope2;
        
    end
    
    %returns the values
    t = tspan';
    y = y';
end