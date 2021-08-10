clc
clear all;
n= input("no of iteration : ");
itI(1)=1./exp(1) -1;
error(1)=0;
for it=2:n
    itI(it)=1- (it*(itI(it-1)));
end
for it=2:n
    fu=@(x)(exp(x).*(x.^it));
    exactI=integral(fu,0,1);
    error(it)=abs(exactI -itI(it))./exactI;
    x(it)=it;
end
plot(x,error,'r');