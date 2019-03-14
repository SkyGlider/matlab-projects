% Name: Andrew Pang
% Date: 12 APR 2019
% Task 3 : Andrew's Rocket Ship

%calls the function calculate_velo with 2 input arguments and 2 output
[ time, velo ] = calculate_velo(-5,80);

%plots the graph of velocity against time
plot(time,velo);

%labels the graph and adds a title
xlabel('time');
ylabel('rocket velocity');
title('Graph of velocity against time');

