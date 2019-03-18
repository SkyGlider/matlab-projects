% Name: Andrew Pang
% Date: 3 MAY 2019  
% Task 3 :  Water tank
close all; clear all; clc;

h = -3:0.01:10;
fx = @(x) h.^3 - 9*h.^2 + (90/pi);
df = @(x) 3*h.^2 - 18*h;

plot(h,fx(h));
xlabel('height');
ylabel('f(h)');
title('f(h) = h^3 - 9h^2 + (90/pi)');

hold on

xi = input("Enter a guess for the root : ");

root = newraph(fx,df,xi,0.01);

plot(root,fx(root),'b^');


