clc;
clear All;
fn=@(x)(2.^x);
a=input("enter a:");
b=input("enter b:");
n=input("enter n:");
x=linspace(a,b,4);
val=simpson_3_8(a,b,n,fn);
fprintf("The area is : %f\n",val);
rel_val=integral(fn,a,b);
error=rel_val - val;
fprintf("error is:%s",num2str(error));

