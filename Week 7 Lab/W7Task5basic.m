% Name: Andrew Pang
% Date: 19 APR 2019  
% Task 5 : Rounded Square Root
clear all;close all;clc;


n = input("Enter value for n : ");
d  = numdigs(n);

if rem(d,2) == 0  
    xi = 7 * 10^((d-2)/2);  
else
    xi = 2 * 10^((d-1)/2); 
end 

i = 0;
xi1 = 0;

while 1
    
    xi1 = floor((xi+ceil(n/xi))/2);
    
    i = i + 1;
    
    if xi == xi1
        
        break
        
    end
    
    xi = xi1;
    
    
    
end   

RSR_val = xi
ite_val = i