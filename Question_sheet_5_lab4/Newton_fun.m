function [root,a,step] = Newton_fun(fn,gn, in_root,e)

a=zeros(1);
a(1)=in_root;
step=1;
while(abs(fn(a(step)))>e)
    fa=vpa(fn(a(step)));
    ga=vpa(gn(a(step)));
    if ga==0
        disp('not ppossible to use this method becuse after this g(a)=0');
        break;
    end
    a(step+1)=a(step)-(fa/ga);
     step=step+1;
    fprintf("step %d : %f\t f(a)=%f\n",step,a(step),fa);
    %if step>N
        %disp('not convergence');
        %break;
    %end
  
end
root=a(step);
end

