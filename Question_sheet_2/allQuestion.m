%Q1_a)find retaltive error in integration by iterative
fprintf("Qusetion 1 a)\n");
clc;
clear ALL;
n= input("no of iteration : ");
itI=zeros(n);
I_error=zeros(n);
x=zeros(n);
itI(1)=1./exp(1) -1;
I_error(1)=0;

for it=2:n
    itI(it)=1- (it*(itI(it-1)));
    fu=@(x)(exp(x).*(x.^it));
    exactI=integral(fu,0,1);
    I_error(it)=abs(exactI -itI(it))./exactI;
    x(it)=it;
end
figure();
plot(x,I_error,'r');
xlabel('x');
ylabel('error');



%Q1_b)Given x find sinh(x) and cosh(x) then find e^-x
fprintf("Question-1_b)\n");
X=input("enter no : ");
a=sinh(X);
b=cosh(X);
e_x1=1/(b+a);%e^(-x)=1/(cosh(x)+sinh(x));
e_x= 1/(cosh(X)+sinh(X));%e^(-x)
%noted that after X=709 it will return 0 
e_xo=exp((-1)*X);
%noted that after X=745 it will return 0 

%Q2 find root by bisection method
fprintf("Question-2\n");
a=02;
b=1./202123002;
fu=@(x)(x.^2-2*(a*x)+b);
ar1=input("aproximate root as a1 : ");
k=1;
while (k==1)
    br1=input("aproximate root as b1 : "); 
    if (fu(br1)*fu(ar1))<0
        k=0;
    else
        fprintf("enter Again b1\n");
    end
end
error=0.000012;
root=bisection_new(fu,ar1,br1,error);

A=1;
B=(-2)*a;
C=b;
r1=(-B+sqrt((B^2)-4*A*C))/(2*A);
r2=(-B-sqrt((B^2)-4*A*C))/(2*A);
if(abs(r1- root)< abs(r2-root))
    re_error=(abs(r1-root));
else
    re_error=(abs(r2-root));
end