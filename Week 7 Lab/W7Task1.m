% Name: Andrew Pang
% Date: 19 APR 2019
% Task 1 : vector lengths
clear all; close all; clc;

%creates row vector V
V = [4, 9, -3, 12, 0, -9, 15, 17, 25, -6, 4, 10, -2, 15];

%gets and prints the length of V
V_len = length(V);
fprintf('The length of vector V is %0.0f\n', V_len);

%creates empty vector n
n = [];

%for loop that runs through every value of V
for v = V 
    
    %checks if the condition meets, and carries out the operation if it does
    %creates a new vector n with the selected values and excludes others
    if v > 0 && or(rem(v,3)==0,rem(v,5)==0)
        v = 2*v;
        n = [ n, v];
        
    elseif v < 0 && v>-5
        v = v^3;
        n = [ n, v];
        
    end
    
end

%gets the length of n
n_len = length(n);

%prints the answers
fprintf('Vector n = ');
disp(n)
fprintf('The length of new vector n is %0.0f ', n_len);