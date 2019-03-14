% Name: Andrew Pang
% Date: 12 APR 2019
% Function for Task 3 : Andrew's Rocket Ship

%defines the function calculate_velo, takes 2 arguments, returns 2 values
function [ time , velo ] = calculate_velo(start_t,end_t)

%returns time as a row vector
time = start_t:0.01:end_t;

%create empty set velo
velo = [];

%for loop that runs through every value of t between start and end times
for t = time
    
    %if else statement to calculate velocity for each value of t
    %the matrix velo expands with increasing values of t as a new element
    %is constantly added to [velo]
    if t <= 0 
        
        v = 0;
        velo = [velo, v];
        
    elseif t <= 10
        
        v = 11*t^2 - 5*t;
        velo = [velo, v];
        
    elseif t <= 20
        
        v =  1100 - 5*t;
        velo = [velo, v];
        
    elseif t <= 30 
        
        v = 50*t + 2*(t - 20)^2.5;
        velo = [velo, v];
        
    else 
        
        v = 1520*exp(-0.1 * (t-30));
        velo = [velo, v];
        
    end
    
end




