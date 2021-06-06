function y =  Division(fun,err,a,b)
p=-1;
while (fun(a)*fun(b) <=0) && (abs(a-b)>err)
    c=(a+b)/2;
    if fun(c)*fun(b)<=0
        a=c;
        p=p+1;
    else
        p=p+1;
        b=c;
    end
end
%sprintf('二分次数为:%d',p);
sprintf('二分法：结果区间为:%f,%f,结果为:%f',a,b,(a+b)/2 );
y = (a+b)/2;
end
    


