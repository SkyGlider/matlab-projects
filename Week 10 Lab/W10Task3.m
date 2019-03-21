% Name: Andrew Pang
% Date: 3 MAY 2019  
% Task 3 : Rockets again!
clear all; close all; clc;

%inputs
T = 50000;
m0 = 2000;
r = 0.8;
g = 9.81;
b = 40;

%calculate t and find vector mt 
t = 0:40;
mt = m0 * ( 1 - (r*t)/b);
%create function accel
accel = @(mt) (T - mt*g)./(mt);

%plots the graph of accel agaisnt time
plot(t,accel(mt),'b-');

%finds the minimum and maximum values of m(t)
a = mt(1);
b = mt(41);

%calls the comp_trap, comp_simp13 and MATLAB's own integration function
vt_trap = comp_trap(accel,a,b,99)
vt_simp = comp_simp13(accel,a,b,99)
vt_matl = integral(accel,a,b)






