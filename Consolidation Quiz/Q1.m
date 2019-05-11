%Q1 - Catalan Numbers
clear all; close all; clc;

c = @(n) factorial(2*n) / (factorial(n+1)*factorial(n));
sum = 0;
for n = 10:20

    if rem(c(n),2) == 0
        
        sum = sum + c(n);
    end
end
disp(sum)