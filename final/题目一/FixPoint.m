function y = FixPoint(fun,err,x)
x1 = fun(x);
while ( abs(x-x1)>err )
    x=x1;
    x1=fun(x);
end

sprintf('不动点迭代法：结果为:%f',x1);
y = x1;
end