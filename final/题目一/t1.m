clear
clc
err = 0.001;
fun11=@(x) 6*x + 5 - sin(x);
fun12=@(x) (sin(x)-5)/6;
fun14=@(x) 6 - cos(x);

fun21=@(x) log(x)+x*x-3;
fun22=@(x) sqrt(3)-log(x)/(x+sqrt(3));
fun24=@(x) 1/x + 2*x;

fun31=@(x) exp(x)+x-7;
fun32=@(x) log(7-x);
fun34=@(x) exp(x)+1;

a=[ Division(fun11,err,-1,1), FixPoint(fun12,err,0), ...
    Newton(fun11,fun14,err,0)];

b=[ Division(fun21,err,0,2),FixPoint(fun22,err,1), ...
    Newton(fun21,fun24,err,1)];


c=[ Division(fun31,err,1,3),FixPoint(fun32,err,1), ...
    Newton(fun31,fun34,err,1)];

disp('二分法、不动点迭代法、牛顿法分别求解如下：')
disp('(1):sinx = 6x + 5' ),disp(a)
disp('(2):lnx + x^2 = 3' ),disp(b)
disp('(3):e^x + x = 7' ),disp(c);

