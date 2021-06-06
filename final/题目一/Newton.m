function y = Newton(fun_a,fun_b,err,x)
x1 = x - fun_a(x)/fun_b(x);
while ( abs(x-x1)>err )
    x=x1;
    x1 = x - fun_a(x)/fun_b(x);
end
y = x1;
sprintf('牛顿法：结果为:%f',x1);

end