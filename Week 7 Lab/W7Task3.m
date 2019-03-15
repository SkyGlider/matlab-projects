% Name: Andrew Pang
% Date: 19 APR 2019  
% Task 3 :  Fourier series
clear all;close all;clc;    

%create a row vector time from -1 to 1
time = -1:0.0001:1;
% createempty vector ft
ft = [];

%for loop that runs through every value of time
for t = time
    
    %if time is less than 0 then ft = -1, 
    %elseif more than 0, ft = 1
    %else, ft = 0
    %the vector ft exapnds with the increasing new elements added to it
    %in the end vector size ft = vector size time
    if t < 0 
        ft = [ ft -1];
        
    elseif t > 0 
        ft = [ ft 1];
        
    else
        ft = [ ft 0];
        
    end
    
        
end

%promts the user for maximum number of input
n = input('Enter maximum number : ');
%calc is a cumulative counter
calc = 0;

%for loop that runs through all numbers between 0 and maximum number
%in each loop the answer is added to calc itself
for x = 0:1:n
    calc = calc + (1/(2*x+1))*sin(((2*x +1)*pi*time)/1);
    
end

%gets the final answer 
answer = (4*calc)/pi;

%plots a graph of f(t) against time (square wave fn)
plot(time,ft,'r-');
hold on;

%plots the graph of F(t) agaisnt time (Fourier's transform)
plot(time,answer,'b-');

%labels the axes, adds a legend and title
xlabel('t value');
ylabel('f(t)/F(t)');
legend('f(t)','F(t)','northwest');
title(["Graph of F(t) and f(t) against t for ", num2str(n), " terms used in Fourier's plot"]);






