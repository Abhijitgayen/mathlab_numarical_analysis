clc;
clear ALL;
clc;
ok=0;
%while(ok==0)
   % fprintf("to see the graph you need to write y1 and x1 -ve and x2 and y2 is +ve\n");
    %x1=input("enter x1 :");
   % y1=input("enter y1 :");    
   % x2=input("enter x2 :");
    %y2=input("enter y2 :");
    
    %a=x1:0.1:x2;
    %b=y1:0.1:y2;
    %[A,B]=meshgrid(a,b);
    %y=((1+1i).*(A+1i.*B).*tanh(2.*(A+1i.*B)))-0.5;
    %surfc(a,b,abs(y));
    %xlabel('x-axis');
    %ylabel('y-axis');
    %ok=input("is this graph is ok?(1/0):");
%end
%in_root=input("enter initial root for this equation :");
fn=@(x)((1+1i).*x.*tanh(2.*x)-0.5);
gn=@(x)(tanh(2*x)*(1 + 1i) - x*(2*tanh(2*x)^2 - 2)*(1 + 1i));
%in_root=0.4+1i.*0.21;
in_root=complex(0.4,0.21);
e=input("Error : ");
[root,a,step]=Newton_fun(fn,gn,in_root,e);
fprintf("root(newton method) is %f + (%f)i\n",real(root),imag(root));

%now we try to solve this problem by regular falshi method
%first we find purely real root then purely imaginary root
%putting x=real(z) in this equation we get two equation xtanh2x-0.5=0 and
%xtanh2x=0
%then putting x=i imag(Z) in this equation we get two equation 
%putting x=iimag(z).we get this xtan2x+0.5+i(xtan2x)=0
%we get two equation xtan2x+0.5=0 and xtan2x=0
%now we try to solve those four equation by falshi method
fn1=@(x)((x.*tanh(2.*x))-0.5);
fn2=@(x)(x.*tanh(2.*x));
fn3=@(x)((x.*tan(2.*x))+0.5);
fn4=@(x)(x.*(tan(2.*x)));
[a1,b1]=plot_fun(fn1);
w=input("are you want to apply Regular falshi methode ? (0/1) ");
if w==1 
    [rootf1,stepf1]=falshi_md(fn1,e,a1,b1);
else 
    rootf1=a1;
end
[a2,b2]=plot_fun(fn2);
w=input("are you want to apply Regular falshi methode ? (0/1) ");
if w==1 
    [rootf2,stepf2]=falshi_md(fn2,e,a2,b2);
else 
    rootf2=a2;
end
[a3,b3]=plot_fun(fn3);
w=input("are you want to apply Regular falshi methode ? (0/1) ");
if w==1 
    [rootf3,stepf3]=falshi_md(fn3,e,a3,b3);
else 
    rootf3=a3;
end
[a4,b4]=plot_fun(fn4);
w=input("are you want to apply Regular falshi methode ? (0/1) ");
if w==1 
    [rootf4,stepf4]=falshi_md(fn4,e,a4,b4);
else 
    rootf4=a4;
end


rootx=min(rootf2,rootf1);
rooty=min(rootf3,rootf4);
fprintf("root(falshi method) is %f + (%f)i\n",rootx,rooty);


