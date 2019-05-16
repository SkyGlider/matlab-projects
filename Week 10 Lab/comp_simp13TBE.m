function I = comp_simp13TBE(f,a,b,n)
% I = comp_simp(f,a,b,n)
% Written by: TBE, ID: ???
% Last modified: 06/05/2019
% Performs composite simpson's 1/3 rule using loop
%
% INPUTS:
%  - f: function handle of equation
%  - a: starting integral limit
%  - b: ending integral limit
%  - n: number of points
% OUTPUT:
%  - I: integral value

% error checking
if (n <3) || (mod(n,2) == 0)
    error('No of points must be odd');
end

% creating x vector and determining width
x = linspace(a,b,n);
h = (b-a)/(n-1);

% Evaluating integral
%even sum
even_sum = 0;
for i = 2:2:n-1
    even_sum = even_sum + f(x(i));
end
%odd sum
odd_sum = 0;
for i = 3:2:n-2
    odd_sum = odd_sum +f(x(i));
end

I = h/3*(f(a) + 4*even_sum + 2*odd_sum + f(b));