clc
x2 = [-1 0 3 4 5];
y2 = [3 5 1 1 1];
x = -1:0.1:5;
s = cubic_two(x2,y2,x);
plot(x,s)
hold on
grid on
title('三次样条函数')