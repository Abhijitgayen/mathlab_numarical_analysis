%Question_2
clc;
clear All;
fn=@(x)(x*tanh(2*x) - 0.1);
gn=@(x)(tanh(2*x) - x*(2*tanh(2*x)^2 - 2));
%to find initail vale i print a graph .after see graph give me initial
%value for this function
in_root=plot_fun(fn);
[root,a,step]=Newton_fun(fn,gn,in_root);
fprintf("Real root is %f\n",a(step));
% try to find purely complex root of this equation
%here we just put x=iy in the main equation that is given
fnc=@(x)(x*tan(2*x)+ 0.1);
gnc=@(x)(tan(2*x) + x*(2*tan(2*x)^2 + 2));
in_rootc=plot_fun(fnc);
[rootc,ac,stepc]=Newton_fun(fnc,gnc,in_rootc);
fprintf("purely imaginary root is %f\n",ac(stepc));


