% Name: Andrew Pang
% Date: 5 APR 2019
% Task 4 : BMI Calculator
close all; clear all; clc;

%prompts the user for their weight and height
usr_w = input('Enter your weight in kg : ');
usr_h = input('Enter your height in m : ');

%calculates the user's bmi 
usr_bmi = usr_w/usr_h^2;

%defines usr_class as an empty string
usr_class = '';

%if else statement to check the category which user belongs to
%sets the string usr_class to underweight,overweight or normal based on bmi
if usr_bmi < 18.5 
    
    usr_class = 'underweight';
    
elseif usr_bmi > 25
    
    usr_class = 'overweight';
    
else
    
    usr_class = 'normal';
    
end

%prints the answer
fprintf('A %4.2f metre tall person with weight %4.2f kg has a BMI of %4.2f and is classed as ',usr_h,usr_w,usr_bmi);
fprintf(usr_class);