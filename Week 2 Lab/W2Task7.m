% Name: Andrew Pang
% Date: 15 MAR 2019
% Task 7 : Matrices

% Create matrices A and B by inputting values
A = [ 8 7 9 5 7 ; 9 6 0 5 5 ; 3 6 0 2 3 ; 4 6 0 8 9 ; 2 1 2 1 2] ;
B = [ 38; -10; 44; -7; 53 ] ;

% Transpose Matrix A
% The appostrophe (x') sign transposes the matrix x
ans_1 = A' 

% A' * B
% Not (.*) 
ans_2 = A' * B

% Sort B in descending order
% Calls up the sort function that takes 2 arguments 
ans_3 = sort(ans_2,'descend')

% Square matrix A
% Not (.^)
ans_4 = A^2

% Form 3x4 matrix
% 3:5 indicates rows 3 to 5 and 2:5 indicates columns 2 to 5
ans_5 = A(3:5,2:5) 

% Form 3x4 matrix (2)
ans_6 = A(2:4,1:4)

% Difference
% Since matrices ans_5 and ans_6 are of same dimensions, it can be done
ans_7 = ans_5 - ans_6

% Element square
% (.^) is required as it is an element by element operation
ans_8 = ans_7.^2







