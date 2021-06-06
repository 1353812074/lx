function Jacobi(A,b,n)
U = triu(A,1);
L = tril(A,1);
D = tril(triu(A,0),0);

p = eig(D\(L+U));
if max(abs(p)) >= 1
    disp("Jacobi迭代不收敛，无法计算")
    return
end



x1 = ones(n,1);
t = 0;
while t<=10    
    for i = 1:n
        x=x1;
        for j =1:n
            if j ~= i
                x1(i) = x1(i)+A(i,j)*x(j);
            end
        end    
        x1(i)=-(x1(i)+b(i))/A(i,i);
    end
    t = t+1;
%    disp(x1)
end


disp("Jacobi迭代求解为：")
disp(x1)
