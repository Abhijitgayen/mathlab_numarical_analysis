clc;
clear All;
f=@(p)(3*p);
x=zeros(1);
y=zeros(1);
n=input("no of initial x: ");
for it=1:n
    x(it)=input("Enter intitial x:");
    y(it)=f(x(it));
end
sum=0;
for i=1:length(x)
    p=1;
    for j=1:length(x)
        if j~=i
            c = poly(x(j))/(x(i)-x(j));
            p = conv(p,c);
        end
    end
    term = p*y(i);
    sum= sum + term;
end
fprintf("polynomail with coefficient with :\n");
for it=1: n
fprintf("a[%d] = %f \n",n-it, sum(it));
end