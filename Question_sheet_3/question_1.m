%Question_1
clc;
clear ALL;
fn=@(x)exp(-(1/(x.^2)));
gn=@(x)((2*exp(-1/x^2))/x^3);
e=5*(10^(-6));
a=zeros(1);
a(1)=plot_fun(fn);
%according to qestion given zero is the root of this equation so . it is
%not necesary to plot this . but for good anaylsis a plot this here
%a(1)=input("enter the initial root near 0 : ");
step=1;
% i am not use my function Newton_fun here because give question is
% different form the general question
while(abs(a(step))>e)
    fa=fn(a(step));
    ga=gn(a(step));
    if ga==0
        fprintf("not ppossible to use this method because f'(%f)=%f\n",a(step),ga);
        break;
    end
    b=a(step)-(fa/ga);
    fprintf("step %d : %f\t f(a)=%f \t f'(a)=%f\n",step,a(step),fa,ga);
    step=step+1;
    a(step)=b;
end

%after ran this code with taking initial value 1 this code is stop raning
%because f'(a)=0(near eqaul to zero) we are not able to caluculate up to
%this 5*(10^(-6))

%if you take initial value 2 the this programme may not be convergence

%conclution of this question is 'initail root is sencitive for newton
%method'
%accoding to graph we clear that as we goes to zero the slop of the graph
%is parallel to the x-axis.so for this case we are not able to find desire
%root by this method easily