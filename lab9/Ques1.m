clc;
clear All;
close All;
l1=input("Enter value of l1");
l2=input("Enter value of l2");
fn1=@(x)((exp(2*h*l1)*exp(l1*x))+(exp((-1)*(l1*x))))*((exp(2*h*l2)*exp(l2*x))+(exp((-1)*(l2*x))));
h=input("Enter value of h");
 
val=romberg_int(fn1,-h,0,10);
