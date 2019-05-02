% Name: Andrew Pang
% Date: 3 MAY 2019  
% Task 4 :  Growth
close all; clear all; clc;

%creates row vector c 
c = 0:0.01:10 ;
%create a math function g(c) and g'(c) that takes values of c
gc = @(c) ((2*c) ./ ( 4 + 0.8*c + c.^2 + 0.2*(c.^3) ));
dgc =@(c) ((10*(20-5*c.^2 - 2*c.^3))./(((c+5).^2).*((c.^2+4).^2)));

%Plots the graphs g(c) and g'(c)
plot(c,gc(c),'b-');
hold on
plot(c,dgc(c),'r-');

%calls the falseposition fucntion to otain the root of g'(c)
%since at maximum, g'(c) = 0
[root, iter] = falseposition(dgc,0,5,1e-4);

%plots the line for the root solution
xline(root,'k--');

%labels the axes and adds a legend
legend('g(c)',"g'(c)",'Solution');
xlabel('c value');
ylabel("g(c)/g'(c)");
hold off;

fprintf('The value of c when the growth is maximum is %f and took %0.0f iterations',root,iter)
