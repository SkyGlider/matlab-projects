% Name: Andrew Pang
% Date: 3 MAY 2019  
% Task 3 :  Water tank
close all; clear all; clc;

h = 0:0.01:10;
fx = @(x)pi*h.^3 - 9*pi*h.^2 + 90;
df = @(x) 3*pi*h.^2 - 18*pi*h;

plot(h,fx(h));
xlabel('height');
ylabel('f(h)');
title('f(h) = h^3 - 9h^2 + (90/pi)');

hold on

xi = input("Enter a guess for the root : ");

root = newraph(fx,df,xi,1e-4);

plot(root,fx(root),'b^');


