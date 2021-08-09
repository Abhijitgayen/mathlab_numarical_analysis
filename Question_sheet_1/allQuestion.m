clc;
clear all;
%Q1 creat afunctionm such that it will return only 
%round 8 of enter number
rval=round_function_8(45.232346464687867);
%Q2 creat a complex matrix and it transpose
n=input("no of row");
for i=1:n
    for   j=1:n
        a=input("x=");
        b=input("y=");
        A(i,j)=complex(a,b);
    end
end
%A transpose is B( not conjugate transpose
for i=1:n
    for j=1:n
        B(i,j)=A(j,i);
    end
end
%Q3 taylor series of Y=sinx
X=linspace(-2*pi,2*pi,1000);
no_it=input("no of iteration :");
for i=1:1000
    [sin_val(i),asin_val(i)]=appsin_tlr(X(i),no_it);
end
figure();
plot(X,sin_val,'b');
hold on;
plot(X,asin_val,'r');
xlabel('X');
ylabel('AppSin(x)& Sin(x)');
legend('Sin(x)','AppSin(x)');
title('polt of sin(x) and taylor series approximation of sin(x) '); 
hold off;
%Q4 creat 3x3 matrix
C=[1 2 3; 4 5 6; 7 8 9];
C(2,:)=C(1,:)+C(3,:);
C(3,:)=1;
%Q5 creat a matrix
D=[1 0 0; 1 1 0;1 0 0];
S=[0 0 0; 0 0 0; 0 0 0];
S(:,1)=1;
S(2,2)=1;