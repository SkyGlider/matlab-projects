% Name: Andrew Pang
% Date: 3 MAY 2019  
% Task 2 :  4th order polynomial
close all; clear all; clc;

%creates row vector x and math function fx that takes values of x
x = -5:0.001:2;
fx =@(x) x.^4 + 6*(x.^3) + 7*(x.^2) - 6*x - 8;

%plots the graph of f(x) against x
plot(x,fx(x),'LineWidth',2);

%labels the axes 
xlabel('x value')
ylabel('f(x) value')
hold on

%calls the falseposition function to get all 4 roots
root1 = falseposition(fx,-5,-2.5,0.001);
root2 = falseposition(fx,-2.5,-1.5,0.001);
root3 = falseposition(fx,-1.5,-0.5,0.001);
root4 = falseposition(fx,0.5,1.5,0.001);

%plots the roots onto the graph
plot(root1,fx(root1),'bo');
plot(root2,fx(root2),'bo');
plot(root3,fx(root3),'bo');
plot(root4,fx(root4),'bo');
