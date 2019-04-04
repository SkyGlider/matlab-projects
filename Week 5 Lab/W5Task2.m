% Name: Andrew Pang
% Date: 5 APR 2019
% Task 2 : Import data
close all; clear all; clc;

%opens the file lab4_plot_data.txt
datum = fopen('lab4_plot_data.txt');

%reads the first line and converts it to a numerix matrix
x = str2num(fgetl(datum));

%reads the next line and does the same 
y1 = str2num(fgetl(datum));

%calculates sin (x) for each value of x
y2 = sin(x);

%plots a graph of y values from file agaisnt x 
plot(x,y1,'ro',x,y2,'k-');

%adds a label and legend to current figure
xlabel('x value');
ylabel('y/sin x');
legend('y','sin x');
