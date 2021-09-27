function [y,n]=muller_me(x,f,error)
n=4;
while(1)
    x0=x(n-3); 
    x1=x(n-2); 
    x2=x(n-1); 
    c=f(x2); 
    b= (((x0-x2)^2)*(f(x1)-f(x2)) - ((x1-x2)^2)*(f(x0)-f(x1)))/((x0-x2)*(x1-x2)*(x0-x1)); 
    a= ((x1-x2)*(f(x0)-f(x2)) - (x0-x2)*(f(x1)-f(x2)))/((x0-x2)*(x1-x2)*(x0-x1)); 
    x(n)= x(n-1)-(2*c/(b+ sign(b)*sqrt((b^2)-4*a*c))); 
    fprintf(" root of the equation is %.9f + i* %.9f with no of iteration is  %d\n",real(x(n)),imag(x(n)),n-3);
    if(abs(f(x(n)))<error)
        break;
    end
    if n>1000
        fprintf("may be this is divergence for this initial root\n");
        break;
    end
    n=n+1;
end    
y=x;
end