% Name: Andrew Pang
% Date: 22 MAR 2019
% Task 3 : Winter Olympics
clear all; close all; clc;
%create row vector for values of country codes and their respective medals
result = [ 1 11 8 10 ; 47 14 14 11 ; 0 9 8 6; 46 7 6 1; 49 14 10 7 ; 31 8 6 6];

%plots no of gold , silver and bronze medals against country code 
cc = result(:,1);
gold = result(:,2);
silv = result(:,3);
bron = result(:,4);
plot(cc,gold,'kd',cc,silv,'rs',cc,bron,'bo');

%labels the axes and adds a legend
xlabel('country code');
ylabel('medals');
legend('gold','silver','bronze','Location','northwest');


%sums all the matrices containing no of medals into one matrix
tota = gold + silv + bron;

%append total to the 5th column
result = [ result tota ]

%finds the value of the largest no. of medals and its position
[max_medals, max_pos] = max(tota)

%Output max no. of medals and its corresponding country code
max_country = cc(max_pos)
