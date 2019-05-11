% Name: Andrew Pang
% Date: 3 MAY 2019  
% Task 5 :  VIRUS! VIRUS EVERYWHERE!
clear all; close all; clc;

%imports data and puts it into a table
datum = importdata('experimental_dNdt.txt');
h1n1data = datum.data;

%seperates time and dndt values into respective vectors
time = h1n1data(:,1);
dndt = h1n1data(:,2);

%plots dndt against time
plot(time,dndt,'k-');
hold on

%Section 1 from time 0 to 110
time1 = time(1:111);
dndt1 = dndt(1:111);
%polyfit section 1
seg1 = polyfit(time1,dndt1,1);
fprintf('Segment 1 : y = %ft + %f\n',seg1(1),seg1(2))
y1 = polyval(seg1,time1);


%Section 2 from time 111 to 211
time2 = time(112:212);
dndt2 = dndt(112:212);
%polyfit section 2
seg2 = polyfit(time2,dndt2,3);
fprintf('Segment 2 : y = %ft^3 + %ft^2 + %ft + %f\n',seg2(1),seg2(2),seg2(3),seg2(4))
y2 = polyval(seg2,time2);


%Section 3 from time 212 to end
time3 = time(213:end);
dndt3 = dndt(213:end);
%polyfit section 3
seg3 = polyfit(time3,dndt3,1);
fprintf('Segment 3 : y = %ft + %f\n',seg3(1),seg3(2))
y3 = polyval(seg3,time3);

%plots the fitted curves (y1,y2,y3)
plot(time1,y1,'-s',time2,y2,'-s',time3,y3,'-s');

%use equation dndt from section 3
f = @(x) seg3(1) * x + seg3(2);
df = @(x) seg3(1);
maxval = newraph(f,df,180,1e-5)

plot(maxval,f(maxval),'k*','MarkerSize', 10)

%labels the axes, adds legend and title
xlabel('time');
ylabel('dN/dt');
title('Graph of dN/dt against time');
legend('Original','Section 1','Section 2','Section 3','Max');



