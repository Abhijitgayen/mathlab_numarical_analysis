%Question_3
clc;
clear All;
fn=@(x)(2*sin(x)+x-pi);
gn=@(x)(2*cos(x) + 1);
%to find initail vale i print a graph .after see graph give me initial
%value for this function
in_root=plot_fun(fn);
[root,a,step]=Newton_fun(fn,gn,in_root);
fprintf("one root is %f\n",a(step));
%using newton's method it is not easy to find root . we need to make proper guess of initial root such that this is convergence 
%after seeing the graph with initial guess x_0=1.2
%then root is 1.246098
