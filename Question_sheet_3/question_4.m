clc;
clear ALL;
clc;
ok=0;
while(ok==0)
    fprintf("to see the graph you need to write y1 and x1 -ve and x2 and y2 is +ve\n");
    x1=input("enter x1 :");
    y1=input("enter y1 :");    
    x2=input("enter x2 :");
    y2=input("enter y2 :");
    
    a=x1:0.1:x2;
    b=y1:0.1:y2;
    [A,B]=meshgrid(a,b);
    y=((1+1i).*(A+1i.*B).*tanh(2.*(A+1i.*B)))-0.5;
    surfc(a,b,abs(y));
    xlabel('x-axis');
    ylabel('y-axis');
    ok=input("is this graph is ok?(1/0):");
end
inroot=input("enter initial root for this equation :");
fn=@(x)((1+1i).*x.*tanh(2.*x)-0.5);
gn=@(x)(tanh(2*x)*(1 + 1i) - x*(2*tanh(2*x)^2 - 2)*(1 + 1i));
%in_root=0.4+1i.*0.21;
in_root=complex(0.4,0.21);
[root,a,step]=Newton_fun(fn,gn,in_root);
fprintf("one root is %f + (%f)i\n",real(root),imag(root));
fprintf("onather root is %f - (%f)i\n",real(root),imag(root));
