% Name: Andrew Pang
% Date: 19 APR 2019
% Function for Task 2 : Max value 
%
%
% ----------INPUT----------
% x = row vector
% ----------OUTPUT----------
% max_val = maximum value in row vector x
% index = index position of the aximum value
function [max_val, index] = mymax(x)

    %temporarily sets  max_val as the first element in x
    max_val = x(1);
    
    %for loop that runs throguh every element of x
    for X = x
        
        %checks if the current value of x is greater than max_val
        %replaces max_val with current value if it is greater
        if X > max_val
            max_val = X;
        end  
    end
    
    %uses the ifnd function to locate the position of max_val in x
    index = find(x == max_val);
   
end