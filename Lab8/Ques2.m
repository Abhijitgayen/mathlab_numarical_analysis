clc;
clear All;
a= input("Enter a:");
b= input("Enter b:");
n=input("Enter n:");
[w,x]=guqwx(a,b,n);
fn=@(x)(exp(x)*cos(x));
sum=0;
for it=1:n
    sum=sum+w(it)*fn(x(it));
end
fprintf("Therefore integral is :%s" ,num2str(sum));
    