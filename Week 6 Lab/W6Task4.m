% Name: Andrew Pang
% Date: 12 APR 2019
% Task 4 : Factorial calculator
close all;clear all;clc

format long
%initialy k is 0 and eul is undefined
k = 0;
n = 0;
eul = 0;
eulnew = 0;
%while loop to check if the diference is less thatn 1e-6

while  (abs( eul - eulnew) > 1e-6) | (eul - eulnew) == 0
    %increases the vaue of k by 1
    eulnew = eul ;
    eul = eulnew + 1/get_fac(n);
    k = k + 1;
    n = n+1;
    
    
end

k_value = k


