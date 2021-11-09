clc;
clear All;
close ALL;
fn=@(x)(exp(x)*cos(x));
n=20;
%input("Enter n:");
[w,x]=guqwx(-1,1,n);
sum=0;
for it=1:n
    sum=sum+w(it)*fn(x(it));
end
%fprintf("Therefore integral is :%s" ,num2str(sum));
g=sum;
main_f=@(t,y)(g - exp(-4*t)-2*y);
%t1=input('Enter value of t1:');
t1=0;
%t2=input('Enter value of t2:');
t2=3;
%N= input('no of step:');
N=40;

y_0= input('Enter value of y_0:');
h=(t2-t1)/N;
t=t1:h:t2;
w=zeros(size(t));
w(1)=y_0;
w_4=zeros(size(t));
w_4(1)=y_0;
df_1=@(t,y)(-2*g + 6*(exp(-4*t))+4*y);
df_2=@(t,y)(4*g-28*(exp(-4*t))-8*y);
df_3=@(t,y)(-8*g+120*(exp(-4*t))+15*y);
for it=2:N+1
    w(it)=w(it-1)+h*(main_f(t(it-1),w(it-1))+(h/2)*df_1(t(it-1),w(it-1)));
    w_4(it)=w_4(it-1)+h*(main_f(t(it-1),w_4(it-1))+(h/2)*df_1(t(it-1),w_4(it-1))+((h.^2)/6)*df_2(t(it-1),w_4(it-1))+((h.^3)/24)*df_3(w_4(it-1),t(it-1)));
end

c=(1-g)/2;
fn_or=@(t)(g*(exp(2*t))/2+(exp(-2*t))/2+c)*exp(-2*t);

error_1=fn_or(1)-w(10)
error_2=fn_or(2)-w(20)






