function f = hermite( x,y,y_1,x0 )
%Hermite插值函数
%   x为已知数据点的x坐标
%   y为已知数据点的y坐标
%   y_1为数据点y值导数
%   x0为插值点的x坐标
syms t;
f = 0.0;
if(length(x) == length(y))
    if(length(x) == length(y_1))
        n = length(x);
    else
        disp('y和y的导数维数不相等');
        renturn;
    end
else
    disp('x和y的维数不相等');
    return;
end
%以上为输入判断和确定“n”的值
for i = 1:n
    h =  1.0;
    a =  0.0;
    for j = 1:n
        if(j ~= i)
            h = h*(t-x(j))^2/((x(i)-x(j))^2);%求得值为(li(x))^2
            a = a + 1/(x(i)-x(j));   %求得ai（x）表达式之中的累加部分
        end
    end
    
    f = f + h*((x(i)-t)*(2*a*y(i)-y_1(i))+y(i));
    
    if(i == n)
        if(nargin == 4)
            f = subs(f, 't' , x0);  %输出结果
        else
            f = vpa(f,6);  %输出精度为有效数字为6位的函数表达式
        end
    end
end


%放在main函数里
x=[0 1];
y=[0 1];
y_1=[1 2];
%x, y为坐标向量, y_1为一阶导的值, x0为插值点的x坐标|| f0为x0对应的值
f=hermite(x,y,y_1);
f=collect(f); % Matlab 合并同类项，将多项式化为一般式
fprintf('Hermite插值多项式为: y=%s\n', f);
f=hermite(x,y,y_1,2);
fprintf('在x=2处的Hermite插值为: %f\n', f);
