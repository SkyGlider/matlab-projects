% Name: Andrew Pang
% Date: 15 MAR 2019
% Task 4: Conversion
clear all; close all; clc;
%Variables
%Input values in yards and miles
miles = 26;
yards = 385;

%Output in Yards
%1 mile is 1760 yards
yards_out = miles * 1760 + yards

%Output in Feet
%1760 yards is 5280 feet
%or 1 yard is 3 feet
feet_out = yards_out * 3

%Output in Kilometres
%3 feet is 0.0009144 km
km_out = (feet_out * 9.144e-4) / 3