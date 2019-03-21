% Name: Andrew Pang
% Date: 3 MAY 2019  
% Task 4 : Popeye
clear all ; close all; clc;

%inputs
H = 30;

%function f(z)
fz = @(z) (200 * (z./5+z)) .* exp(-2*z/H);
z = 0:H;

%plots f(z) against z
plot(z,fz(z));
xlabel('z values')
ylabel('f(z)')
%using integral function to find F(F_1)
F_1 = integral(fz,0,H)

%using comp_trap to find F(F_2)
F_2 = NaN;
n = 1; 

%while loop that calulates minimum number of points needed
%so that F is accurate to 0.01%
while or((abs(((F_2 - F_1)/F_1)*100) > 0.01),isnan(F_2))
    n = n + 1;
    F_2 = comp_trap(fz,0,H,n);
end
%number of segments = number of points -1
n_points_t = n
n_segments_t = n - 1



%using comp_simp to find F(F_3)
F_3 = NaN;
n = 1;

%while loop that calulates minimum number of points needed
%so that F is accurate to 0.01%
while or((abs(((F_3 - F_1)/F_1)*100) > 0.01),isnan(F_3))
    %since comp_simp must take odd values, n+=2
    n = n + 2;
    F_3 = comp_simp13(fz,0,H,n);
    
end

n_points_s = n
n_segments_s = n - 1








