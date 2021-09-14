clc;
clear All;
f1= @(x, y) x*(sinh(4*x) - sin(4*y))-y*(sinh(4*x) + sin(4*y)) - 0.5*(cosh(4*x) + cosh(4*y));
f2 =@(x, y) y*(sinh(4*x) - sin(4*y))-x*(sinh(4*x) + sin(4*y)); 
f1x = @(x,y) 4*x*cosh(x) - sin(4*y) -sinh(4*x)-4*y*cosh(4*x); 
f1y =@(x,y)sin(4*y)-sinh(4*x)-4*x*cos(4*y)-4*y*cos(4*y); 
f2x = @(x,y) sinh(4*x) + sin(4*y) +4*x*cosh(4*x) + 4*y*cosh(4*x); 
f2y = @(x,y) sin(4*y) - sinh(4*x) +4*x*cos(4*y) - 4*y*cosh(4*y); 

onI=input("Number of iteration : ");
root=zeros();
root(1,1)=input(" initial root x0 :");
root(1,2)=input(" initail root y0 :");
DF=zeros(2,2);
F=zeros(1);
h0=zeros(2);
ok=0;
for n=2 : onI
    DF(1,1)=f1x(root(n-1,1),root(n-1,2));
    DF(1,2)=f1y(root(n-1,1),root(n-1,2));
    DF(2,1)=f2x(root(n-1,1),root(n-1,2));
    DF(2,2)=f2y(root(n-1,1),root(n-1,2));
    F(1)=f1(root(n-1,1),root(n-1,2));
    F(2)=f2(root(n-1,1),root(n-1,2));
    if det(DF) == 0 || det(DF)<1e-50
        fprintf("Cheack the funbction again not possible to apply this method becase det of Jcobin marix is Zero\n");
       ok=1;
        break;
    end
    if det(DF) > 1e-50
    in=inv(DF);
    root(n,1)=root(n-1,1)-(in(1,1)*F(1,1)+in(1,2)*F(1,2));
    root(n,2)=root(n-1,2)-(in(2,1)*F(1,1) +in(2,2)*F(1,2));
    end
end
if ok==0
    fprintf("Root x: %0.9f and Root y: %0.9f",root(n,1),root(n,2));
end
