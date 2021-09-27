clc;
clear All;
h=5;
X=[5,10,15,20];
f=@(x)(exp(x));
Y=f(X);
n=length(X);
cdy=zeros(n,1);
cddy=zeros(n,1);
fdy=zeros(n,1);
fddy=zeros(n,1);
bdy=zeros(n,1);
bddy=zeros(n,1);
% central difference
for it= 2 : n-1
   cdy(it)= (Y(it+1) - Y(it-1))/(2*h);
   cddy(it)= (Y(it+1) -2*Y(it) +Y(it-1))/(h^2);
end 
%forward difference
for it=1: n-1
   fdy(it)=(Y(it+1)-Y(it))/h;
end
for it=1 :n-2
   fddy(it)=(Y(it+2) -2*Y(it+1) +Y(it))/(2*h^2);
end 
%backward difference
for it = 2:n
   bdy(it)=(Y(it)-Y(it-1))/h;
end
for it=3:n
   bddy(it)=(Y(it) -2*Y(it-1)+Y(it-2))/(2*h^2);
end

cdy
bdy
fdy
cddy
bddy
fddy

