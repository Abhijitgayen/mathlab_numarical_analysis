clc;
clear All;
gn=@(x)(1+((1/2)*sin(x)));
fn=@(x)(gn(x)-x);
in_root=plot_fun(fn);
e=input("Enter error :");
[root, step,a]=fix_point_fun(fn,gn,in_root,e);
fprintf("Root of the equation is :%f\n",root);

