clc;
clear All;
gn=@(x)((2*x - 4)*(x - 1)^3 + 3*(x - 1)^2*(x - 2)^2);
fn=@(x)(((x-1).^3).*((x-2).^2));
in_root=plot_fun(fn);
e=input("error:");
[root,a,step] = Newton_fun(fn,gn, in_root,e);
fprintf("root of the equation is: %f \n",root);
ok=1;
while(ok == 1)
    in_root=input("enter initial root:");
    p=input("enter p :");
gnu=@(x)(x-(p*fn(x)/gn(x)));
[rootu,au,stepu] = updated_Newton_fun(fn,gnu, in_root,e);
fprintf("root of the equation using updated_newton_method is: %f \n",rootu);
ok =input("are you find another root ? (0/1)");
end


