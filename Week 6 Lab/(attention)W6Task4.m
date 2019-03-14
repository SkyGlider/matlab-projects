% Name: Andrew Pang
% Date: 12 APR 2019
% Task 4 : Factorial calculator
close all;clear all;clc

k = 10;
eul = 0;
y = 0;
for z = 1:1:k+1
    val = 1./get_fac(y);
    eul = eul + val;
    fprintf('\ny value is %f and eul is %f',y,eul);
    y = y + 1;
    
end

fprintf('\n%f',exp(1));


