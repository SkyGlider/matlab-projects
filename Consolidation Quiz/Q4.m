%Q4 - Exactly divisible by 8
clear all; close all; clc;

valid = 0;

for nums = 1:2000
    counter = 0;
    
    for i = 1:nums
        if rem(nums,i) == 0
            counter = counter + 1;
        end
    end
    
    if counter == 8
        valid = valid + 1;
    end
    
end

disp(valid)