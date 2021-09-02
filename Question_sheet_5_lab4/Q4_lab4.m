clc;
clear All;
fn=@(x)(exp(-(1/(x.^2))));
gn=@(x)((2*exp(-1/x^2))/x^3);
ok=1;
while(ok==1)
in_root=plot_fun(fn);
e=input("enter eroor:");
[root,set,a]=Newton_fun(fn,gn,in_root,e);
fprintf("root of the equation is:%f\n",root);
ok=input("are you want to find another root?(0/1) :");
end