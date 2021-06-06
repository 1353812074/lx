function Gauss(A,b,n)

x=zeros(n,1);

for k=1:n-1
    if A(k,k)==0
        error('Error')
    end
    
    for i=k+1:n
        Aik=A(i,k)/A(k,k);
        for j=k:n
            A(i,j)=A(i,j)-Aik*A(k,j);
        end
        b(i)=b(i)-Aik*b(k);
    end
end

x(n)=b(n)/A(n,n);
for k=n-1:-1:1
    s=b(k);
    for j=k+1:n
        s=s-A(k,j)*x(j);
    end
    x(k)=s/A(k,k);
end

disp("高斯消去法求解为：")
disp(x)



end