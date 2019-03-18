% Name: Andrew Pang
% Date: 29 MAR 2019
% Function for Task 4(a) : Daily Temperature
%
% -Inputs-
% Tpeak = Peak temperature of the year
% tdaypeak = Day of which the peak temperature occured (1-365)
% Tmean = Mean temperature of the year
%
% -Outputs-
% a = temperature for every day in the year
% b = minimum value for the year
% c = day at which minimum temperature occurs
%
%creates a functions that returns 3 values a, b & c and takes 3 input
%arguments
function [ a , b , c ] = get_temp(Tpeak,tdaypeak,Tmean)

    %forms a row vector t for days 1 to 365
    t = 1:1:365;
    w = (2*pi)/365;
    
    %takes the input parameters and caluculates the average daily temp for
    %every day
    T = Tmean + (Tpeak -Tmean)*cos(w*(t-tdaypeak));
    
    %finds the minimum temperate for the year and is position
    [minvalue, year_pos ] = min(T);
    day_min = t(year_pos);
    
    %assigned the return variables to its respective values 
    a = T; 
    b = minvalue; 
    c = day_min; 
