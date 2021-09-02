clc;
clear All;
%we get the recurrsion relation I(n+1)=1-n*I(n)
%from this we get the equation g(x)=1-(n*x)
%we need to find fixed point of g(x)
ok=1;
while(ok==1)
n=input("Enter n:");
gn=@(x)(1-((n*x)));
fn=@(x)(gn(x)-x);
fIn=@(x)((exp(x).*(x.^(n)))./exp(1));
exact_val=integral(fIn,0,1);
in_root=plot_fun(fn);
e=input("error :");
[root,step,a]=fix_point_fun(fn,gn,in_root,e);
fprintf("for n=%f the integral is :%f\n",n,root);
fprintf("exact_val:%f\n",exact_val);
ok=input("Are you change the value of n? (0/1)");
end