clc;
clear ALL;
Re=10.^5;
fn=@(x)((1/((x).^(1/2))+0.4-(((3).^(1/2)).*log(Re*((x).^(1/2))))));
gn=@(x)(- 3^(1/2)/(2*x) - 1/(2*x^(3/2)));
in_root=input("initial root :");
e=input("enter error:");
[root,a,step]=Newton_fun(fn,gn,in_root,e);
fprintf("Root is by newton_method %f\n",real(a(step)));