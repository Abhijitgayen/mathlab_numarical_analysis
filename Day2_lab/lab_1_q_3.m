clc;
clear all;
a=02;
b=1./202123002;
fu=@(x)(x.^2-2*(a*x)+b);
root=bisection_r_c(fu,-2,1,0.00000012);
A=1;
B=(-2)*a;
C=b;
r1=(-B+sqrt((B^2)-4*A*C))/(2*A);
r2=(-B-sqrt((B^2)-4*A*C))/(2*A);