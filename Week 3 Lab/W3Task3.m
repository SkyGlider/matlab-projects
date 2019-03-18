% Name: Andrew Pang
% Date: 22 MAR 2019
% Task 3 : Winter Olympics
clear all; close all; clc;
%create row vector for values of country codes and their respective medals
cc = [ 1 47 0 46 49 31 ];
gold = [ 11 14 9 7 14 8 ];
silv = [ 8 14 8 6 10 6 ];
bron = [ 10 11 6 1 7 6];

%plots no of gold medals against country code 
plot(cc,gold,'bd');

%hold onto the current graph to plot other values
hold on;

%plots no of silver and bronze medals against country code 
plot(cc,silv,'rs');
plot(cc,bron,'bo');

%labels the axes and adds a legend
xlabel('country code');
ylabel('medals');
legend('gold','silver','bronze','Northwest');

hold off;

%sums all the matrices containing no of medals into one matrix
tota = gold + silv + bron;

%finds the value of the largest no. of medals and its position
[max_medals, max_pos] = max(tota);

%Output max no. of medals and its corresponding country code
disp(max_medals)
max_country = cc(max_pos)
