clc;
clear All;
close all;
x=input("Enter value of x : ");
h = input("Enter value of h : ");
l1=input("Enter l1 value : ");
fn1=@(x)((exp(2*h*l1)*exp(l1*x))+(exp((-1)*(l1*x))));
eps_step = input("Enter value of eps_step : ");
val=central_diff_richardson_exp(fn1,x,h,eps_step);