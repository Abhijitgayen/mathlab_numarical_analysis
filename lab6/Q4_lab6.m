clc;
clear ALL;
 syms x
n = 10;
for it=1 : n
   fn=hermite_fun(it);
   fprintf(" harmite polynomial of degree upto %d is : %s \n",it,fn);
end

f1=@(x)(2*x) ;
f2=@(x)(4*x.^2 - 2);
f3=@(x)(-12*x + 8*x.^3);
f4=@(x)(16*x.^4 - 48*x.^2 + 12);
f5=@(x)(-160*x.^3 + 120*x + 32*x.^5);
f6=@(x)(720*x.^2 - 480*x.^4 + 64*x.^6 - 120);
xval= linspace(5 ,-5,100);
plot(xval,f1(xval));
hold on;
plot(xval,f2(xval));
hold on;
plot(xval,f3(xval));
hold on;
plot(xval,f4(xval));
hold on;
plot(xval,f5(xval));
hold on;
plot(xval,f6(xval));
legend('2x','4*x.^2 - 2','-12*x + 8*x.^3','16*x.^4 - 48*x.^2 + 12','-160*x.^3 + 120*x + 32*x.^5','720*x.^2 - 480*x.^4 + 64*x.^6 - 120');