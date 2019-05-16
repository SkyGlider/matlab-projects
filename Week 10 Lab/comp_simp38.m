% Name: Andrew Pang
% Date: 3 MAY 2019  
% Function for Week 10 : Composite Simpson 3/8
%
%-------INPUTS-------
% f  - function
% a  - starting x value
% b  - end x value
% n  - number of segments
%
%-------OUTPUTS-------
% I  - integral value, total area of segments
%
function I = comp_simp38(f,a,b,n)

    %calculates the interval
    inter = (b-a)/(n-1);
    %cumulative counter
    total_area = 0;
    
    for i = 1:1:((n-1)/3)
        
        % Evaluating integral
        area = 3/8*inter*(f(a) + 3*f(a+inter) + 3*f(a+2*inter) + f(a+3*inter));
        total_area = total_area + area;
        % next point is 3 intervals away
        a = a + 3*inter;
    end
    
    I = total_area;
end





