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
mt = @(t) m0 * ( 1 - (r*t)/b);
%create function accel
accel = @(t) (T - mt(t)*g)./(mt(t));

%plots the graph of accel agaisnt time
plot(t,accel(t),'b-');
xlabel('Time');
ylabel('Acceleration');
title('Graph of acceleration against time');

%calls the comp_trap, comp_simp13 and MATLAB's own integration function
vt_trap = comp_trap(accel,t(1),t(end),99)
vt_simp = comp_simp13(accel,t(1),t(end),99)
vt_matl = integral(accel,t(1),t(end))






