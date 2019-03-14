% Name: Andrew Pang
% Date: 29 MAR 2019
% Task 2 : Butterfly curve

%prompts the user for min and max value of t
mint = input('Enter minimum value of t : ');
maxt = input('Enter maximum value of t : ');

%create row vector t based on user's input
t = mint:0.01:maxt ;

%calculate the corresponding values of x and y for each value of t
x = sin(t) .* ( exp(cos(t)) - 2*cos(4*t) - (sin(t/12)).^5);
y = cos(t) .* ( exp(cos(t)) - 2*cos(4*t) - (sin(t/12)).^5);

%create 2x1 subplot with reference to graph 1
subplot(2,1,1);

%plots x agianst t
plot(t,x);

%holds onto the current plot for second plot
hold on

%plots y against t on the same graph
plot(t,y);

%adds the axes labels and a legend
xlabel('t value');
ylabel('y/x value');
legend('x','y');

%turns off the hold to proceed to next graph
hold off;

%switch subplot reference to graph 2
subplot(2,1,2);

%plots y agianst x
plot(x,y,'m-');

%adds the axes labels and the title
xlabel('x value');
ylabel('y value');
title('The Butterfly');



