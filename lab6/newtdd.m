function c=newtdd(x,y,n)
v=zeros(1,1);
for j=1:n
v(j,1)=y(j);
fprintf("%f  ",v(j,1));
end
fprintf("\n");
for i=2:n 
for j=1:n+1-i % fill in column from top to bottom
v(j,i)=(v(j+1,i-1)-v(j,i-1))/(x(j+i-1)-x(j));
fprintf("%f  ",v(j,i));
end
fprintf("\n");
end
c=zeros(1);
for i=1:n
c(i)=v(1,i); % Read along top of triangle
end % for output coefficients