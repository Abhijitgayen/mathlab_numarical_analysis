%Question_4
%puting x=ix in the given equation we get this xtan2x+0.5+i(xtan2x)=0
%we get two equation xatn2x+0.5=0 and xtan2x=0
% now we plot and try to solve this equation
clc;
clear All;
fn=@(x)(x*tan(2*x) + 0.5);
gn=@(x)(tan(2*x) + x*(2*tan(2*x)^2 + 2));
%to find initail vale i print a graph .after see graph give me initial
%value for this function
in_root=plot_fun(fn);
[root,a,step]=Newton_fun(fn,gn,in_root);
fprintf("one root is %f\n",a(step));

fns=@(x)(x*tan(2*x));
gns=@(x)(tan(2*x) + x*(2*tan(2*x)^2 + 2));
in_roots=plot_fun(fn);
[roots,as,steps]=Newton_fun(fns,gns,in_roots);
fprintf("one root is %f\n",as(steps));