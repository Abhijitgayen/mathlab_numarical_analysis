clc;
clear All; 
K=input("Enter k:");
h=input("Enter h:");
d=input("Enter d:");
p=0.9;
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
