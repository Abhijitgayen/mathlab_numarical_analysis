function [root,step,a]=fix_point_fun(fn,gn,in_root,e)
 a=zeros(1);
a(1)=in_root;
step=1;
while(abs(fn(a(step)))>e)
    a(step+1)=gn(a(step));
    fprintf("step %d : %f\t f(a)=%f\n",step,a(step),fn(a(step)));
    step=step+1;
end
root=a(step);
end