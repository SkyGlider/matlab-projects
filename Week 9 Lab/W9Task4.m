% Name: Andrew Pang
% Date: 3 MAY 2019  
% Task 4 :SGR
clear all; close all; clc;

%inputs
n = 2;
m = [ 1.3 1.8 3.0 4.5 6.0 8.0 9.0 ];
a = [ 0.07 0.13 0.22 0.275 0.335 0.35 0.36 ];

%calls the linregrsgr function to obtain 5 outputs
[ F , V, ycept, gradi, error] = linregrsgr(m,a,2);

%plots the original values
plot(m,a,'rs');
hold on
fprintf('a0 is %4.2f, a1 is %4.2f, error is %4.2f', ycept, gradi,error);

%new vector m 
m = 1:0.1:10;
%finds the new values of a 
fx = (F*m.^2)./(V^n + m.^n);

%plots the extrapolated graph
plot(m,fx,'b--');

%labels the axes , adds title and legend
xlabel('mass');
ylabel('acceleration');
legend('Original','Extrapolated','Location','northwest');


