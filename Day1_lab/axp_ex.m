function [e_x,a_ex] = axp_ex(x)
e_x=exp(x);
%a_ex=1+x+(x^2)/2+(x^3)/6+(x^4)/24+(x^5)/120;
a_ex=1+x+(x^2)/2+(x^3)/6;
end

