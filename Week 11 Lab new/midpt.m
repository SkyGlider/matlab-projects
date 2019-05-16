% Name: Andrew Pang
% Date: 3 MAY 2019  
% Function for Week 11 : Midpoint method
%
%-------INPUTS-------
% dydt  - dydt equation as a function
% tspan - 2-element vector of start and end values
% y0    - initial value of y(0)
% h     - step size / delta x
%
%-------OUTPUTS-------
%t      - a vector of t values (independent variable)
%y      - a vector of corresponding y values (dependent variable)
%
function [t,y] = midpt(dydt,tspan,y0,h)

    %set yi as the value of y(0), at which t = 0
    yi = y0;
    %gets h/2 value
    h_2 = h/2;
    y = [];
    t = tspan(1):h:tspan(2);
    
    for ti = t
        
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
    t = t';
    y = y';
end