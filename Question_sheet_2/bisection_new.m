function  c = bisection_new(f,a,b,error)
c=a - ((a-b)/2);
while abs(f(c))>error
    if f(c)* f(a)<0
        b=c;
    elseif f(c)*f(b)<0
        a=c;
    end
c=a-((a-b)/2);
 
end

