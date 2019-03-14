% Name: Andrew Pang
% Date: 15 MAR 2019
% Task 3: Resistance

%Variables
%Input value for each resistor
r1 = 400;
r2 = 5000;
r3 = 8000;
r4 = 300;

%Connected in series
%Sums the resistors
rseries = r1 + r2 + r3 + r4 

%Connected in parallel
rp_1 = (1/r1) + (1/r2) + (1/r3) + (1/r4);
%Calculating the reciprocal of rp_1
rparallel = 1/rp_1