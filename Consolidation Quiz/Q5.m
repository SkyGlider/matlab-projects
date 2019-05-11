%Q5 - Steady-3 numbers
clear all; close all; clc;

counter = 0;

for i = 1:50000
    
    numstr = num2str(i);
    cubedstr = num2str(i^3);
    
    cubedlen = length(cubedstr);
    numlen = length(numstr);
    
    startindex = (cubedlen - numlen) + 1;
    
    if cubedstr(startindex:end) == numstr
        fprintf('%s is from %s \n',cubedstr,numstr);
        counter = counter + 1;
    end
    
end
disp(counter)