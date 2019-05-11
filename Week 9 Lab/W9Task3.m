% Name: Andrew Pang
% Date: 3 MAY 2019  
% Task 3 : Oxygen Solubility
clear all; close all; clc;

%creates vectors T and S and finds log10T and log10S
T = 5:5:45;
S = [ 1.95 1.70 1.55 1.40 1.30 1.15 1.05 1.00 0.95 ];
lgT = log10(T);
lgS = log10(S);

%calls linreg function to get y-intercept(lg(a)), gradient(b) and error
[ ycept, grad , error ] = linreg(lgT,lgS);
a = 10^ycept;
b = grad;
fprintf(' The equation is S = %4.2f * ( T ^ %4.2f) , and r^2 is %4.2f', a,b,error);

%plots the original values to graph
plot( T, S,'bo');
hold on

%new vector T from 0 to 60 and new vector S based on the T
new_T = 0:60;
new_S = a * new_T.^b;
plot(new_T,new_S,'k-');

%find value of S at 50C
S_50 = a * 50^b
plot(50,S_50,'rd');

%labels the axes and adds a title & legend
title('S = 3.64*T^-0.34');
xlabel('Temperature');
ylabel('Solubility');
legend('Original','Extrapolarated','T at 50C');


