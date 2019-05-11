%Q2 - Multiples of 3 & 8
clear all; close all; clc;

sum = 0;
for n = 1:400
    if rem(n,3) == 0 || rem(n,8) == 0
        sum = sum + n;
    end
end
disp(sum)