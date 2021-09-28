function [s0,s1,s2,s3]=cubic_spline_me(x,y)

n = length(x);

h = x(2:n) - x(1:n-1);
d = (y(2:n) - y(1:n-1))./h;

low= h(1:end-1);
main  = 2*(h(1:end-1) + h(2:end));
up = h(2:end);

T = spdiags([low main up], [-1 0 1], n-2, n-2);
rh= 6*(d(2:end)-d(1:end-1));
m = T\rh;

m = [ 0; m; 0];

s0 = y;
s1 = d - h.*(2*m(1:end-1) + m(2:end))/6;
s2 = m/2;
s3 =(m(2:end)-m(1:end-1))./(6*h);

end
