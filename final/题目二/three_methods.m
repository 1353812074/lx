function three_methods(A,b,n,k)

fprintf("第（%d）问：",k);
Gauss(A,b,n);
Jacobi(A,b,n);
GS_1(A,b,n);

end