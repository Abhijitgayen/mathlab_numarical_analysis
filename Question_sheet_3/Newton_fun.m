function [root,a,step] = Newton_fun(fn,gn, in_root)
a=zeros(1);
a(1)=in_root;
e=input("error : ");
step=1;
while(abs(fn(a(step)))>e)
    fa=fn(a(step));
    ga=gn(a(step));
    if ga==0
        disp('not ppossible to use this method becuse after this g(a)=0');
        break;
    end
    b=a(step)-(fa/ga);
    fprintf("step %d : %f\t f(a)=%f\t f'(a)=%f\n",step,a(step),fa,ga);
    %if step>N
        %disp('not convergence');
        %break;
    %end
    step=step+1;
    a(step)=b;
end
root=a(step);
end

