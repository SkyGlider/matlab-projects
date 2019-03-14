% Name: Andrew Pang
% Date: 22 MAR 2019
% Task 5 : Water Tank

%creates row vector for radius with 0.025m increment
r = 2:0.025:10;

%calculates the corresponding height for each value of r
height = (800 - (2/3)*pi*r.^3)./(pi*r.^2);

%calculates the total cost for corresponding values of r and height
cost = 300*(2*pi*r).*height + 400*2*pi*r.^2;

%plots a graph of total cost against radius
plot(r,cost);

%labels the axes
xlabel('radius');
ylabel('total cost');

%holds onto the graph for second plot
hold on

%finds the minimum cost and its position in the matrix
[ minvalue , minpos ] = min(cost);

%finds the correspoding height and radius
min_cost = minvalue
cor_height = height(minpos)
cor_radius = r(minpos)

%plots the minimum point
plot(cor_radius,minvalue,'bo');

hold off






