%Q3 - Prime numbers
clear all; close all; clc;

y = primes(99999);
sum = 0;

for i = y
    
    firstdg = num2str(i);
    firstdg = firstdg(1);
    sum = sum + str2num(firstdg);
    
end
disp(sum)