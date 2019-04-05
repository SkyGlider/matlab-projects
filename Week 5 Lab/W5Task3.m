% Name: Andrew Pang
% Date: 5 APR 2019
% Task 3 : Noisy data
close all; clear all; clc;

%opens the file temperatures.txt
datum = fopen('temperatures.txt');

%reads the first line and converts it to a numerix matrix
temp_vals = str2num(fgetl(datum));

%creates the vector days based on the size of vector temp_vals
days = 1:1:length(temp_vals);

%plots the graph of daily temperature agiasnt no of days
plot(days,temp_vals,'rd');
title('graph of daily temperature against days');

%labels the axes
xlabel('days');
ylabel('temperature');

%creates a logical array valid_pos which sets all values below 0 and above
%45 to false
valid_pos = 0 < temp_vals & temp_vals < 45;

%sets values at position 5, 13 and 42 to false
valid_pos([5 13 42]) = 0;

%creates a new vector valid_val which contails all the valid temperatures
%based on their positions in the logical array
valid_val = temp_vals(valid_pos);

%creates a new vector days2 which contains the days at which the valid
%temperature occurs based on their positions in the logical array
days2 = days(valid_pos);

%opens a new figure
figure;

%plots graph of valid temperatures agaisnt the day it occured.
plot(days2,valid_val,'bo');
title('plot of valid daily temperatures')

%labels the axes
xlabel('days');
ylabel('temperature');

fclose(datum);

        
        
        
    