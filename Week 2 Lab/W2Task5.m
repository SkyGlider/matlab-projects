% Name: Andrew Pang
% Date: 15 MAR 2019
% Task 4: Blood vessels

% Original Code

% clear all; close all; clc    - perfect, no errors, clears all windows

% tao/Q = 4*mu/pi*R^3          - no brackets, so BODMAS rule applies 
%                              - operation on right equates to
%                                4*(mu/pi)*R^3, lacks parenthesis
%                              - it should be a  variable on the left 
%                                and not an operation
%                              - all the variables are not pre-defined 

% Q = 9.81*10e-6               - variables should be defined before
%                                the operation
%                              - Q should be 9.81e-6 or 9.81*10^-6

% R = 50                       - R should 5e-3 since it is calculated in cm
%                              - 1 um = 0.0001 cm

% mu = 0.03                    - correct value but should be defined first


%Corrected code

clear all ; close  all ; clc;

%Input values (pre-defined)

Q = 9.81e-6;
R = 5e-3;
mu = 0.03;

%Calculation and output

tao = (4*mu*Q)/(pi*(R^3))
