clc;
clear All; 
K=input("Enter k:");
h=input("Enter h:");
d=input("Enter d:");
p=0.5;
fn=@(x)(K^2*(p*tanh(x*d)*tanh(x*(h - d))+ 1) - x*K*(tanh(x*d) + tanh (x*(h - d))) + (x^2)*(1 - p)*tanh(x*d)* tanh(x*(h - d)));
ok=1;
while ok==1
x(1) = input("Enter inital root X0 :");
x(2) = input("Enter Intial root X1 :");
x(3)= input("Enter Intial root X2 :");
error=input("Enter error :");
[x,n]=muller_me(x,fn,error);
fprintf("Number of iteration = %d root = %.9f\n ",n-3,x(n));
ok=input("are you want to find another root ?(0/1) : ");
end
% root=1.199678640 and root=-1.199678640
%k=h=d=1 x0=0.2,y0=0.3,z0=0.4
%x0=-1,y0=-2,z0=-3