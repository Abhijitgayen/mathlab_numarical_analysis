function [w,x]=guqwx(a,b,n)
n=n-1;
xu=linspace(-1,1,n+1)';%get here n subinterval
y=cos((2*(0:n)'+1)*pi/(2*n+2))+(0.27/(n+1))*sin(pi*xu*n/(n+1));
% initial guess
p=zeros(n+1,n+2);
dp=zeros;
y0=2;
eps=2.2204e-16;
while max(abs(y-y0))>eps
    p(:,1)=1;
    dp(:,1)=0;
    p(:,2)=y;
    dp(:,2)=1;
    for k=2:(n+1)
        p(:,k+1)=( (2*k-1)*y.*p(:,k)-(k-1)*p(:,k-1) )/k;
    end
    dp=(n+2)*( p(:,n+1)-y.*p(:,n+2) )./(1-y.^2);   
    y0=y;
    y=y0-p(:,n+2)./dp;
end
x=(a*(1-y)+b*(1+y))/2;      
w=(b-a)./((1-y.^2).*dp.^2)*((n+2)/(n+1))^2;
end