% Name: Andrew Pang
% Date: 3 MAY 2019  
% Task 5 : 4-bar linkage
close all; clear all; clc;

%variables
a = 1;
b = 2;
c = 4;
d = 5;
q2 = 30;

%create the function and fint the root using fzero
fq = @(q) cosd(q2-q) - (d/a)*cosd(q) + (d/c)*cosd(q2) - (a^2 - b^2 + c^2 + d^2)/(2*a*c);
root = fzero(fq,150);

%calls the respective functions to get the roots and number of iterations
[ rootb, iterb ] = bisection(fq,120,165,1e-4);
fprintf('Bisection method returns root of %f with %3.0f iterations\n',rootb,iterb);
[ rootf, iterf ] = falseposition(fq,120,165,1e-4);
fprintf('False position method returns root of %f with %3.0f iterations\n',rootf,iterf);
[ rootm, iterm ] = modisecant(fq,120,0.01,1e-4);
fprintf('Modified Secant method returns root of %f with %3.0f iterations\n',rootm,iterm);

%prints the leading function
fprintf('Modified Secant method requires the least amount of iterations');

%function to calculate the difference of calculated root from actual root
diff = @(r) abs(root-r);

%plots the root difference agasint number of iterations
plot(iterb,diff(rootb),'r^');
hold on;
plot(iterf,diff(rootf),'bo');
plot(iterm,diff(rootm),'k*');

%labels the graph and adds a legend
xlabel('Iterations');
ylabel('Difference from actual root');
legend('Bisection','False Position','Modified Secant');
title('Graph of root difference agaisnt no. of iterations');
