% Name: Andrew Pang
% Date: 3 MAY 2019  
% Task 5 : Andrew's rocket ship... again!
clear all; close all; clc;

%inputs
f = 75000;
vinitial = 0;
m = 1000;
step = 0.1;
tspan = 0:step:10;

%vector of c
c = [ 50 100 500 1000 2000];

%hold onto same graph so next plot wont be overwritten
hold on

%for loop that runs through each value in vector c
for i = 1:1:length(c)
    
    %creates mathematical function dvdt for each c value
    dvdt = @(t,v) (f - c(i)*v)/m;
    %gets t and v values for each c value
    [t_m , v_m ] = midpt(dvdt,tspan,vinitial,step);
    %plots the graph for each c value
    plot(t_m,v_m);
    %prints the v value at t = 10
    fprintf('V = %0.2fm/s at t = 10s when c = %0.0f\n',v_m(end),c(i));
    
end

%adds legend and title, labels the axes
legend('c = 50','c = 100','c= 500','c = 1000','c = 2000','Location','northwest');
xlabel('time');
ylabel('velocity');
title('Velocity-Time graph of rockets for different c values');

