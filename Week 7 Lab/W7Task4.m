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


%define x_dist2 as empty matrix
x_dist2 = [];

%nested for loop that runs through every value of c first followed by dx
%for loop that runs through every value in dx
for i1 = dx
    
    %define x_dist1 as empty matrix
    x_dist1  = [];
    
    %for loop that runs through every value in c
    for i2 = c
        
        %x_dist1 expands horizontally with increasing element added for
        %each customer, this vector contains the modified x - distance 
        x_dist1 = [ x_dist1, ( cv(i2) * (i1 - cx(i2)) )^2 ];
       
    end
    
    %concatannates every single row of x_dist 1 to get full matrix
    %containing modified x-distances
    x_dist2 = [x_dist2; x_dist1];
        
end

%gets the minimum row sum of dist_x2, and row position
[x_minumumrowsum, x_minrowsumpos  ] = min(sum(x_dist2,2));

%finds the minimum values for each customer using row position
x_minvalues = x_dist2(x_minrowsumpos,:);

%define y_dist2 as empty matrix
y_dist2 = [];

%nested for loop that runs through every value of c first followed by dy
%for loop that runs through every value in dy
%It carries out the same function as the nested loop above but for
%y-distances instead
for i3 = dy
    
    y_dist1  = [];
    
    for i4 = c
        
        y_dist1 = [ y_dist1 ( cv(i4) * (i3 - cy(i4)) )^2];
            
    end
        
    y_dist2 = [y_dist2; y_dist1];
        
end

[y_minumumrowsum, y_minrowsumpos  ] = min(sum(y_dist2,2));

y_minvalues = y_dist2(y_minrowsumpos,:);



%finds the costs for each customer
min_costs = 0.5 * sqrt(x_minvalues + y_minvalues);

%sums the vector min_costs to get total minimum costs
total_minimum_cost = sum(min_costs)

%plots the given graph
plot(cx,cy,'ko','MarkerFaceColor','black');
hold on

%plots the centralized distribution centre's location
plot(x_minrowsumpos,y_minrowsumpos,'rd','MarkerFaceColor','red');

%labels the axes
xlabel('x (km)');
ylabel('y (km)');



%-----THE FOLLOWING LINES ARE FOR DEBUGGING PURPOSES ONLY-----
%y_minsumrowpos
%x_minsumrowpos
%distance_compo = sqrt(x_dist2 + y_dist2);
%[d_minumumrowsum, d_minsumrowpos  ] = min(sum(distance_compo,2));
%d_minvalues = distance_compo(d_minsumrowpos,:);


