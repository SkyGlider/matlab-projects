% Name: Andrew Pang
% Date: 3 MAY 2019  
% Task 5 : cross sectional area
clear all; close all; clc;

%inputs
y = [ 0 2 4 5 6 9 ];
H = [0.50 1.30 1.25 1.80 1.00 0.25];
U = [0.03 0.06 0.05 0.13 0.11 0.02];
UH  = U.*H;

%plots U and U*H agaisnt H
plot(y,H,'b-');
hold on
plot(y,UH,'r-');

%new vector for y
y_val = 0:0.1:9;

%polyfit function - get the coefficients of the fitted curve 
%gets a ,b and c in (ax^2 +bx +c)
%polyval to find fitted values of H and U*H based on new vector Y

%Fitted H
p1 = polyfit(y,H,2);
hy = @(y_val) polyval(p1,y_val);
plot(y_val,hy(y_val),'b--');

%Fitted U*H
p2 = polyfit(y,UH,2);
uyhy = @(y_val) polyval(p2,y_val);
plot(y_val,uyhy(y_val),'r--');

%adds a legend
xlabel('distance');
ylabel('H/U*H');
legend('H','U*H','fitted H','fitted U*H');

%use comp_trap function to get Ac and Q values
ac = comp_trap(hy,0,9,6);
q = comp_trap(uyhy,0,9,6);

fprintf('The cross sectional area is %4.2f m^2 and the average flow is %0.2f m^3/s using fitted data\n',ac,q);

%using raw data to calculate Ac and Q
%each interval is the difference between sucessive given y values

%Ac calculations
total_area = 0;
for i = 1:1:5
    area = ((H(i) + H(i+1))/2)*(y(i+1) - y(i));
    total_area = total_area + area;
end

%Q calculations
total_flow = 0;
for i = 1:1:5
    flow = ((UH(i) + UH(i+1))/2)*(y(i+1) - y(i));
    total_flow = total_flow + flow;
end

fprintf('The cross sectional area is %4.2f m^2 and the average flow is %0.2f m^3/s using original data\n',total_area,total_flow)




