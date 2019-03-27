% Name: Andrew Pang
% Date: 3 MAY 2019  
% Task 3 : Bacquerels
clear all; close all; clc;

%function of dy/dt
dydt = @(t,c) -0.175*c;

%inputs
step = 0.1;
tspan = 0:step:5;
yinitial = 100;

%gets t and y values for each function
[t_e,y_e] = euler(dydt,tspan,yinitial,step);
[t_h, y_h] = heun(dydt,tspan,yinitial,step);
[t_m,y_m] = midpt(dydt,tspan,yinitial,step);
[t_mat, y_mat] = ode45(dydt,tspan,yinitial);

%plots the graphs on the same figure
plot(t_e,y_e,'b-',t_h,y_h,'k-',t_m,y_m,'r-',t_mat,y_mat,'g-');

%labels the axes, adds title and legend
xlabel('Time');
ylabel('Concentration');
legend('Euler','Heun','Midpoint','MATLAB');
title('graph of Concentration against time');




