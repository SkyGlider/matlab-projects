% Name: Andrew Pang
% Date: 12 APR 2019
% Function for Task 4 : Factorial calculator


function [val] = get_fac(n)

if isreal(n) == 1 
    
    if n > 0 && rem(n,1) == 0
        
         val = 1;
         for z = 1:1:n
    
              val = val*z;
        
         end
         
    elseif n == 0
        
        val = 1;
    else
        
         val = 'Input must be positive integer!';
         
    end
    
else
    
    val = 'Input must be real!';
    
end
