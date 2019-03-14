% Name: Andrew Pang
% Date: 29 MAR 2019
% Function for Task 5 : Fence

%creates a functions that returns 2 values, length and perimeter
%It takes 2 input arguments, width and area
function [ leng, peri ] = calc_fence(width,area)

%calculates the length and perimeter for values of areas and corresponding width
leng = (area./width) - (1/sqrt(2));
peri = width + (2/sqrt(2))*(width) + 2*leng;

