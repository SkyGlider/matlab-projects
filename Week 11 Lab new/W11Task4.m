% Name: Andrew Pang
% Date: 3 MAY 2019  
% Task 4 : Flow
clear all; close all; clc;

%Creating the first mathematical function
A = 1250;
q = 450;
dydt = @(t,y) (3*q*(sin(t))^2 - q)/A;

%inputs
step = 0.1;
tspan = [0 10];
yinitial = 0;

%calls the euler function to get t and y values
[t_e,y_e] = euler(dydt,tspan,yinitial,step);

%create new mathematical function
alpha = 150;
dydt2 = @(t,y) (3*q*(sin(t))^2 - alpha*(1 + y)^1.5)/A;

%calls euler function to get new t and y values
[t_e2,y_e2] = euler(dydt2,tspan,yinitial,step);

%plots both graphs for different outflows
plot(t_e,y_e,'b-',t_e2,y_e2,'r-');

%labels axes, adds title and legend
title('graph of volume against time');
legend('Constant outflow','Non-constant outflow','Location','northwest');
xlabel('time');
ylabel('volume');

