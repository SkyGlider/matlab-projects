x = 0 : 1:200;
y = x.^2;
y2 = x.^3;

subplot(4,3,[3,6,9])
plot(x,y)

subplot(4,3,[10:12])
plot(x,y2)