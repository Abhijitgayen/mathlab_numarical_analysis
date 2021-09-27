clc;
clear All;
f=@(x)(3*x);
ix=zeros(1);
y=zeros(1);
n=input("no of initial x: ");
for it=1:n
    ix(it)=input("Enter intitial x:");
    y(it)=f(ix(it));
end
c=newtdd(ix,y,n);
fprintf("polynomail with coefficient with :\n");
for it=1 : n
fprintf("a[%d] = %f \n",it-1, c(it));
end