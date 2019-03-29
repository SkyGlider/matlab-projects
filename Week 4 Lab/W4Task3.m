% Name: Andrew Pang
% Date: 29 MAR 2019
% Task 3 : Functions
close all; clear all; clc;

%set up row matrix of mass1, mass2 and distance
mass_earth = linspace(5.9e24,5.9e24,5);
mass_obj = [ 6.4e23 1.9e27 5.7e26 8.7e25 1e26 ];
dist = [ 7.8e10 6.3e11 1.3e12 2.7e12 4.4e12];

%calls the function compute_ug with 3 arguments, assigns the returned value
%to grav_e
grav_e = compute_ug(mass_earth,mass_obj,dist);

%plots the graph of gpe agaisnt distance
plot(dist,grav_e,'ro');
xlabel('distance');
ylabel('gravitational potential energy');
title('Graph of gpe against distance');
