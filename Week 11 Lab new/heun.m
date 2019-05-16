% Name: Andrew Pang
% Date: 3 MAY 2019  
% Function for Week 11 : Huen's method
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
function [t,y] = heun(dydt,tspan,y0,h)

    %set yi as the value of y(0), at which t = 0
    yi = y0;
    y = [];
    t = tspan(1):h:tspan(2);
    %for loop for intervals defined in tspan
    for ti = t
        
        %set the final value of y to yi (since initial value y(0) of is known)
        yfinal = yi;
        %adds the yfinal to vector y
        y = [y yfinal];
        %Operatons
        slope1 = dydt(ti,yi);
        yappx = yi + h*(slope1);
        slope2 = dydt(ti+h,yappx);
        slopeavg = (slope1 + slope2)/2;
        yi = yi + h*slopeavg;
        
    end
    
    %Returns the values
    y = y';
    t = t';
    
end