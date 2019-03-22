% Name: Andrew Pang
% Date: 22 MAR 2019
% Task 4 : Uniform Beam
clear all; close all; clc;

%chosen units : cm for length, kN for force
%variables
L = 100;
E = 50000;
I = 30000;
wo = 2.5;

%form row vector x using linspace
x = linspace(0,L,30);

%calculates y for each value of z
y = (wo/(120*E*I*L))*(((x.^5)*-1)+(2*(L^2)*(x.^3))-((L^4)*x));

%plots y against x
plot(x,y,'b-');

%adds labels to graph
xlabel('x value');
ylabel('deflection');

%finds the maximum value and its positions in matrix y
[miny , miny_pos] = min(y);

%outputs the max value of y and its location x
maxy = abs(miny)
maxx = x(miny_pos)

