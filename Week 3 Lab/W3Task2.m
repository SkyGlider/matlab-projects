% Name: Andrew Pang
% Date: 22 MAR 2019
% Task 2 : Graph functions
clear all; close all; clc;

%Create a row vector z from -10 to 10 with increment 0.1
z = -10:0.1:10;

%Calculates value of f(z) for each value of z
fz = (1/sqrt(2*pi))*exp((-1*(z.^2))/2);

%Calculates value of g(z) for each value of z
gz = (z./6).*(sin(z));

%plots f(z) and g(z) agaisnt z
plot(z,fz,'b--',z,gz,'r-');

%set labels for x and y axes and turn on legend
xlabel('z value');
ylabel('f(z)/g(z)');
legend('f(z)','g(z)');
grid on;



