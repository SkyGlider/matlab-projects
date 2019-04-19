% Name: Andrew Pang 
% Date: 19 APR 2019
% Task 2 : Max value
clear all;close all;clc;

%creates row vector x from 0 to 50
x = 0:0.001:50 ;
%calculates fx for every value of x
fx = x.^(1./x);

%checks the answer for mymax() fucntion and the default max() function
[ my_val , my_pos ] = mymax(fx)
[ com_val, com_pos ] = max(fx)

%plots a grpah of fx agianst x
plot(x,fx);
hold on;

%plots the maximum point
plot(x(my_pos),my_val,'bo');

%labels the axes and adds a legend
xlabel('x value');
ylabel('f(x) value');
legend('f(x)','Maximum pt.');
title('Graph of f(x) agaisnt x');

%prints the answer
fprintf('The maximum value is %0.2f and occurs at index %0.0f',my_val,my_pos);

