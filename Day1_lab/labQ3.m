 clc;
 clear all;
 X=linspace(-1,1,1000);
 for i=1:1000
     [epr_x(i),aep_x(i)]=axp_ex(X(i));
 end
 plot(X,epr_x,'r');
 xlabel('x');
 ylabel('e^x');
 hold on
 plot(X,aep_x,'b')
 hold off