% Name: Andrew Pang
% Date: 19 APR 2019  
% Task 5 : Rounded Square Root
clear all;close all;clc;

%prompt user input (can be vector)
usr_in = input('Enter n value(s) :');

%initialize
xi1_tot = [];
j = [];

%run through every number defined by user
for n =  usr_in
    
    %gets d value
    d  = numdigs(n);

    %checks if it is odd or even
    if rem(d,2) == 0  
        xi = 7 * 10^((d-2)/2);  
    else
        xi = 2 * 10^((d-1)/2); 
    end 
    
    %while loop iniitlization
    i = 0;
    y = xi;
    xi1 = 0;
    
    %iterates until xi1 = xi
    while not(y == xi1)
        xi1 = y;
        
        y = floor((xi+ceil(n/xi))/2);
        
        xi = y;
        
        i = i + 1;
        
    end 
    
    %adds the RSR, iteration value to their respective matrics
    xi1_tot = [xi1_tot y];
    j = [j i];
end   

RSR = xi1_tot
iterations = j
RSR_avg = mean(xi1_tot)
iter_avg = mean(iterations)