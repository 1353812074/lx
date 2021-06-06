
function GS_1(A3,b3,n)
x=zeros(n,1);
e0=1e-3;
M=100;
x0=x;
x1=x0;
m=0;
while(1)
    for i=1:n
        s=0;
        for j=1:i-1
            s=s+A3(i,j)*x1(j);
        end
        for j=i+1:n
            s=s+A3(i,j)*x0(j);
        end
        x1(i)=-(s-b3(i))/A3(i,i);
    end
    m=m+1;
       if(norm(x1-x0)<e0)
            disp("G-S迭代求解为：")
            disp(x1)
            break;
        elseif(m>M)
            disp("G-S迭代：达到最大循环次数");
            disp(x1);
            break;
        else
            x0=x1;
        end
end



end
