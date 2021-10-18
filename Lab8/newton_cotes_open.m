function approxint=newton_cotes_open(fn,a,b,n,m)
%m degree ploy
%n points 

if mod(n,m)~=0
    disp("Some error");
    return
end
if m==0
    w=[2];
elseif m==1
    w=[3 3 ]/2;
elseif m==2
    w=[2 -1 2]*4/3;
elseif m==3
    w=[11 1 1 11]*5/24;
end
h=(b-a)/n+2;
x=linspace(a,b,n+3);
y=fn(x);
approxint=0;
m=m+1;
for i=1:m:n+1-m;
approxint = approxint + w*y(i+1:i+m)';
end
approxint = approxint*h;
end

