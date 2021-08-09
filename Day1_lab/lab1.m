clc;
x1=[1,2,3,4];
x2=linspace(0,10,100);
[F1,F2,F3]=myfunction(5);
A=rand(3);
B=rand(3);
res=mul_function(A,B);
for i=1:12
    A1(i)=i+12;
    A2(i)=2*i;
end
plot(A1,A2);