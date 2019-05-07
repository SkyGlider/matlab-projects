% Name: Andrew Pang
% Date: 3 MAY 2019  
% Task 2 :  e^x
clear all; close all; clc;

%creates row vectors x y and loge(y)
x = [ 7 16 26 38 50 62 77 86 ];
y = [ 17 70 248 555 630 783 886 967 ];
lny = log(y);

%plots y values agaisnt x
plot(x,y,'kd')
hold on

%calls the linreg function to obtain loge(b)=y-int, k=gradient and r2=error
[lnb, k, r2 ] = linreg(x,lny);

%finds b
b = exp(lnb);
fprintf('beta is %f, k is %f, r^2 is %f\n',b,k,r2);

%uses matlab polyfit to find its values of b and k and r2
p = polyfit(x,lny,1);
b_new = exp(p(2));
k_new = p(1);

%calculation for r2
sr = sum((lny - p(2) - k*x).^2);
st = sum((lny - (sum(lny)/8)).^2);
r2_new = 1 - sr/st;

fprintf('beta is %f , k is %f, r^2 is %f using polyfit\n',b_new,k_new,r2_new);

%plots the graph for the non linear function
x_new = 0:1:90;
y_new = b_new.*(exp(k_new.*x_new));
plot(x_new,y_new,'b--');

%labels the graph
xlabel('x values');
ylabel('y values');
legend('Original','Curve fit');


