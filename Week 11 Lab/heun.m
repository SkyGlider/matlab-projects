% Name: Andrew Pang
% Date: 3 MAY 2019  
% Function for Week 11 : Huen's method
function [t,y] = heun(dydt,tspan,y0,h)

    %set yi as the value of y(0), at which t = 0
    yi = y0;
    y = [];
    
    %for loop for intervals defined in tspan
    for ti = tspan 
        
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
    t = tspan';
    
end