clc
x1 = [0 1 2 3];
y1 = [3 5 4 1];
x = 0:0.1:3;
s = cubic_two(x1,y1,x);
plot(x,s)
hold on
grid on
title('三次样条函数')


