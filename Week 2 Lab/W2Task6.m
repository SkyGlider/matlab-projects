% Name: Andrew Pang
% Date: 15 MAR 2019
% Task 6 : f(x)

%Input values 
%define x as a matrix containing 4 given values
x = [ -5 pi exp(1) 999 ]; 

%use element-by-element operation to find fx for each x value
fx = ( x .* sin(x) ) ./ (x .^ 3 - 2)

%assign the answer for f(-5) and f(999) to respective vars 
%using their positions
pos_fn5 = fx(1);
pos_f999 = fx(4);

%calculates the answer
ans = pos_fn5 * pos_f999






