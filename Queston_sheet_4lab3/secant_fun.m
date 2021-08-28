function [root,a,step] = secant_fun(fn, in_root, in_roots,e)
a=zeros(1);
a(1)=in_root;
a(2)=in_roots;
fa=zeros(1);
%e=input("error : ");
step=1;
fa(1)=fn(a(1));
while(abs(fn(a(step+1)))>e)
    fa(step+1)=fn(a(step+1));
    ga=(fa(step+1)-fa(step))/(a(step+1)-a(step));
    a(step+2)=a(step+1)-(fa(step+1)/ga);
    fprintf("step %d : %f\t f(a)=%f\t\n",step,a(step+2),fa(step+1));
    %if step>N
        %disp('not convergence');
        %break;
    %end
    step=step+1;
end
root=a(step+1);
end

