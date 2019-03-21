% Name: Andrew Pang
% Date: 3 MAY 2019  
% Function for Week 10 : Composite  Trapzeroid
function I = comp_trap(f,a,b,n)

    %finds the interval
    inter = (b-a)/(n-1);
    %cumulative counter
    total_area = 0;
    %for loop that runs thorugh every interval to finds its respective area
    for i = 1:1:(n-1)
        
        %finds area of each interval
        area = ((f(a) + f(a+inter))/2)*inter;
        total_area = total_area + area;
        %moves a to next point
        a = a + inter;
    end
    
    I = total_area;

end
