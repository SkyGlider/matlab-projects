% Name: Andrew Pang
% Date: 3 MAY 2019  
% Task 2 : Follow Task 1
clear all; close all; clc;
%function of dy/dt
dydt = @(t,y) 3*exp(t) - (8/3)*y;

%inputs
step = [ 1 0.75 0.5 0.001];
yinitial = 3;

%for loop for different values of h(steps)
for i = 1:length(step) 
    
    %tspan for different values of h
    tspan = 0:step(i):3;
    
    %calls functions with different steps to get t and y values
    [t_h, y_h] = heun(dydt,tspan,yinitial,step(i));
    [t_m,y_m] = midpt(dydt,tspan,yinitial,step(i));
    [t_mat, y_mat] = ode45(dydt,tspan,yinitial);
    
    %subplot 2 by 2 with reference to each step
    subplot(2,2,i);
    plot(t_h,y_h,'b-',t_m,y_m,'r-',t_mat,y_mat,'k-');
    
    %adds the title, legend and axes labels for each plot
    title(sprintf('y agaisnt t for h value (steps) of %s',num2str(step(i))));
    legend("Heun's","Midpoint","MATLAB");
    xlabel('t value');
    ylabel('y value');
    
    
end



