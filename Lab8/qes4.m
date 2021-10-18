clc;
clear all;

a=input("enter a: ");
b=input("Enter b:");
d=input("Enter c:");
M=zeros(16,16);
A=zeros;
for it=1:16
    D(it)=d;
end
for it=1 : 12
    A(it)=a;
end
for it=1 :15
    B(it)=b;
end
M=diag(D);
M=M+diag(B,1)+diag(B,-1)+diag(A,4)+diag(A,-4);
for it =1:3
    M(4*it,4*it+1)=0;
    M(4*it,4*it+1)=0;
end