% Name: Andrew Pang
% Date: 29 MAR 2019
% Task 5 : Fence
close all; clear all; clc;

%create row vector W1 for width between 7 to 20 meters
W1 = linspace(7,20);
A1 = 111;

%call the calc_fence function which takes 2 input arguments, and returns 2
%values namely the length and perimeter
[ L1, P1 ] = calc_fence(W1,A1);

%plots the perimeter against the width
plot(W1,P1,'k-');

%holds onto the current plot 
hold on;


%finds the minimum perimeter and its position in the row matrix
[ minpvalue, minpos ] = min(P1)
%finds the width corresponding to the minimum permeter
wvalue = W1(minpos);

%plots the minimum value of perimeter
plot(wvalue,minpvalue,'bd');

%labels the axes
xlabel('width(m)');
ylabel('perimeter(m)');
legend('Perimeter','minimum');

hold off;




