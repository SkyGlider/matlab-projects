% Name: Andrew Pang
% Date: 19 APR 2019  
% Task 5 : Rounded Square Root
clear all;close all;clc;

usr_in = input('Enter n value :')
xi1_tot = [];
j = [];
for n =  usr_in
    
    d  = numdigs(n);

    if rem(n,2) == 0  
    xi = 7 * 10^((d-2)/2);  
    else
    xi = 2 * 10^((d-1)/2); 
    end 
    
    i = 0;
    y = xi;
    xi1 = 0;

    while not(y == xi1)
        xi1 = y;
        
        y = floor((xi+ceil(n/xi))/2);
        
        xi = y;
        
        i = i + 1;
        
    end 
    
    xi1_tot = [xi1_tot y];
    j = [j i];
end   

RSR = xi1_tot
iterations = j