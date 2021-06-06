clear;clc;
A=[2,-2,-1;
    4,1,-2;
    -2,1,-1;];
b=[-2;1;-3];
three_methods(A,b,3,1);


A2=diag(repmat([3], 1, 100))+ ...
    diag(repmat([-1], 1, 99), 1)+ ...
    diag(repmat([-1], 1, 99), -1);
b2=ones(100,1);
b2(1)=2;
b2(100)=2;
three_methods(A2,b2,100,2);
