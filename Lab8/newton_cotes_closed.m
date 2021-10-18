function approxint=newton_cotes_closed(fn,a,b,n,m)
%m degree ploy
%n points 
if mod(n,m) ~= 0
  disp("ERROR: n is not a multiple of m, stop");
  return
end

if m==1
w=[1 1]/2;
elseif m==2
w=[1 4 1]/3;
elseif m==3
w=[1 3 3 1]*3/8;
elseif m==4
w=[7 32 12 32 7]*4/90;
end
h=(b-a)/n;
x=linspace(a,b,n+1);
y=fn(x);
approxint=0;
for i=1:m:n+1-m;
approxint = approxint + w*y(i:i+m)';
end
approxint = approxint*h;
end