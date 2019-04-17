clear all; close all; clc

fx =@(x) x^4+6*(x^3)+7*(x^2)-6*x-8;
dfx = @(x) 4*x^3+18*x^2+14*x-6
[root, iteration] = newraph(fx,dfx,-2.5,0.001)