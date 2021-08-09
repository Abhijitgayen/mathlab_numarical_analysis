clc;
clear all;
X=linspace(0,pi/2,100);
for i=1:100
[sin_x(i),cos_x(i)]=sin_cos_f(X(i));
end
plot(X,sin_x,'r')
hold on
plot(X,cos_x,'b')
figure()
plot(cos_x,sin_x,'k')