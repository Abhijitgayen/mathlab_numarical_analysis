clc;
clear all;
x=input("enter no : ");
a=sinh(x);
b=cosh(x);
e_x1=1/(b+a);
e_x= 1/(cosh(x)+sinh(x));
%e_x=cast(e_x,'double');
e_x
e_x1
