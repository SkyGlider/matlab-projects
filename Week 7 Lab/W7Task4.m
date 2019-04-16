% Name: Andrew Pang
% Date: 19 APR 2019  
% Task 4 :  Distribution centre
clear all;close all;clc; 

%vector c is number of each customer 
c = 1:1:6;

%vector cx,cy and cv is the x positions, y positions and volume of each customer
cx = [ 1 7 8 17 22 27 ];
cy = [ 28 18 16 2 10 8 ];
cv = [ 5 11 1 9 7 6];

%dx and dy is every x and y coordinate in the given x-y plane 
%starts form 0 to 30 
dx = 0:1:30;
dy = 0:1:30;
mini_cost = Inf;

%runs thru every combination of x and y coordinates [(0,1),(0,2)...(30,30)]
for x = dx
    for y = dy
        
        %calculate the cost for each customer
        cost = 0.5*cv.*sqrt((x-cx).^2 + (y-cy).^2);
        
        %checks if total cost is less than the minimum recorded cost
        if sum(cost) < mini_cost
            %if yes, overwrites the minumum cost and notes coordiates
            mini_cost = sum(cost);
            x_pos = x;
            y_pos = y;
        end
    end
end

%plots the given graph
plot(cx,cy,'ko','MarkerFaceColor','black');
hold on

%plots the centralized distribution centre's location
plot(x_pos,y_pos,'rd','MarkerFaceColor','red');

%labels the axes
title('Graph of customer location')
xlabel('x (km)');
ylabel('y (km)');
legend('Customers','Distribution Centre')

fprintf('The minimum cost is %f',mini_cost)