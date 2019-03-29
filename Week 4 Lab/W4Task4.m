% Name: Andrew Pang
% Date: 29 MAR 2019
% Task 4 : Daily Temperature
close all; clear all; clc;

%forms a row vector of days from 1 to 365
days = 1:1:365;

%calls the function get_temp and gain 3 outputs for each city
[ audailyt, aumint, auminday ] = get_temp(25.9,13,19.8);
[ nydailyt, nymint, nyminday ] = get_temp(24.8,185,12.6);

%plots the daily temperatures of each city against days
plot(days,audailyt,'k-');
hold on;
plot(days,nydailyt,'k--');

%plots the minimum temperature and the day it occured for each city
plot(nyminday,nymint,'b*');
plot(auminday,aumint,'r*');

%labels the axes, adds a legend and title
xlabel('days');
ylabel('average daily temperature');
legend('Melbourne','New York','New York minimum','Melbourne minimum');
title('Average daily temperatures of different cities');

%prints the values
fprintf('The minimum temperature in Melbourne is %3.1f and occured on day %3.0f \n',aumint,auminday)
fprintf('The minimum temperature in New York is %3.1f and occured on day %3.0f',nymint,nyminday)