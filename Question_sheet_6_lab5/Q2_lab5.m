clc;
clear All;
x=zeros(1);
Re=10^5; 
f=@(x)(1/sqrt(x))+ 0.4 - sqrt(3)*log(Re*sqrt(x)); 
x(1) = input("Enter inital root X0 :");
x(2) = input("Enter Intial root X1 :");
x(3)= input("Enter Intial root X2 :");
error=input("Enter error :");
[x,n]=muller_me(x,f,error);
fprintf("Number of iteration = %d\n root = %.9f\n ",n-3,x(n));