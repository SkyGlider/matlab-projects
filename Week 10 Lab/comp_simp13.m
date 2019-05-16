% Name: Andrew Pang
% Date: 3 MAY 2019  
% Function for Week 10 : Composite Simpson 1/3
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
function I = comp_simp13(f,a,b,n)
    %calculates the interval
    inter = (b-a)/(n-1);
    
    %cumulative counter
    total_area = 0;
    
    %for loop that runs through every 2 intervals 
    %2 intervals required to construct a parabola
    for i = 1:1:((n-1)/2)
        
        %area under each parabola
        area =(inter*(f(a) + 4*f(a+inter) + f(a+2*inter)))/3;
        total_area = total_area + area;
        %next point is 2 intervals away
        a = a + 2*inter;
    end
    
    I = total_area;
end