% Name: Andrew Pang
% Date: 3 MAY 2019  
% Task 3 :  Water tank
close all; clear all; clc;

%row vector for height, and fucntions f(h) and df/dh
h = 0:0.01:6;
fx = @(h) -pi*h.^3 + 9*pi*h.^2 - 90;
df = @(h) -3*pi*h.^2 + 18*pi*h;

%plots h agaisnt f(h)
plot(h,fx(h));
hold on

%prompts user for root guess
xi = input("Enter a guess for the root : ");

%ontains root using newraph function
[root, iter] = newraph(fx,df,xi,1e-4);
fprintf('The root is %f\n',root);

%plots the root
plot(root,fx(root),'b^');

%labels the axes and adds a title and legend
xlabel('height');
ylabel('f(h)');
title('f(h) = h^3 - 9h^2 + (90/pi)');
legend('f(h)','Root');

fprintf('The depth of water needed to fill the tank to 30m^3 is %fm\n',root);
fprintf("It took the Newton-Raphson method %0.0f iterations to solve\n",iter);


