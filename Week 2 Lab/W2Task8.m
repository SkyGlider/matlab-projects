% Name: Andrew Pang
% Date: 15 MAR 2019
% Task 8 : Vectors and Matrices
clear all; close all; clc;

%Create row vector X 

    %Create Vector X containing 1 to 10
    X = 1:10 ;
    %Then carry out element square of vector X and reassign it to X
    X = X.^2
    
 
%Create matrix Y
    
    %Constructing matrix Y row-by-row
 
    %pick out values in 3rd, 6th and 9th position in X and form row vector 
    row_1 =  X(3:3:10);
    %use sqrt function on row vector 1  to find sqrt of each element
    row_2 = sqrt(row_1);
    %use abs function to get abosolute difference
    row_3 = abs(row_1 - row_2);
    %multiply each element by 5 (.* not required as 5 is constant)
    row_4 = 5*row_3;
    
    %Concatenate all rows
    Y = [row_1; row_2; row_3; row_4]
    


