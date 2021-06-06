function coeff=splinecoeff(x,y)

n=length(x);

v1=0;

vn=0;

A=zeros(n,n); %matrix A=n*n

r=zeros(n,1);

for i=1:n-1 %delta definition

dx(i)=x(i+1)-x(i);

dy(i)=y(i+1)-y(i);

end

for i=2:n-1 %load A matrix

A(i,i-1,i+1)=[dx(i-1) 2*(dx(i-1)+dx(i)) dx(i)];

r(i)=3*(dy(i)/dx(i)-dy(i-1)/dx(i-1));

end

A(1,1)=1;

A(n,n)=1; %natural spline conditions

coeff=zeros(n,3);

coeff(:,2)=A/r; %solve for c

for i=1:n-1  %solve for b and d

coeff(i,3)=(coeff(i+1,2)-coeff(i,2))/(3*dx(i));

coeff(i,1)=dy(i)/dx(i)-dx(i)*coeff(i,2)+coeff(i+1,2))/3;

end

coeff=coeff(1:n-1,1:3); %output=matrix of coefficients

