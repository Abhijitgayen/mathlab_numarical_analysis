%Question_1
clc;
clear All;
fn=@(x)(2*sin(x)+x-pi);
gn=@(x)(2*cos(x) + 1);
%to find initail vale i print a graph .after see graph give me initial
%value for this function
[in_root,in_roots]=plot_fun(fn);
e=input("error : ");
[root,a,step]=secant_fun(fn,in_root,in_roots,e);
fprintf("root(secant_method) is %f\n",a(step+1));
[rootn,an,stepn]=Newton_fun(fn,gn,in_root,e);
fprintf("root(newton_method) is %f\n",an(stepn));

%using newton's method it is not easy to find root . we need to make proper guess of initial root such that this is convergence 
%after seeing the graph with initial guess x_0=1.2
%then root is 1.246098
