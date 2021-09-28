clc;
clear All;
syms x;
 fn=@(x)(sin(x).^2);
 n= input ("Enter value of n :");
 a= input ("Enter value of a:");
 b =input ("Enter value of b:");
 h=(b - a)/n;
 sum = (h./2).*(fn(a)+fn(b));
 for it=1 : n-1
     sum=sum+ h.*(fn(a+it*h));
 end
 exact=integral(fn,a,b);
 fprintf ("Exact value : %f and numerical value :%f", exact,sum);
 
