% Name: Andrew Pang
% Date: 12 APR 2019
% Task 4 : Factorial calculator
close all;clear all;clc

%initialy k is 0 and eul is undefined
k = 0;
eul = NaN;

%while loop to check if the diference is less thatn 1e-6
while (abs( eul - exp(1)) > 1e-6) || isnan(eul)
    %increases the vaue of k by 1
    k = k + 1;
    eul = 0;
    
    %for loop to run through every value between 0 - k
    for i = 0:1:k
        %calculates 1/n!
        term = 1/get_fac(i);
        %add term to cumulative counter eul
        eul = eul + term;
    end 
    
end

k_value = k


