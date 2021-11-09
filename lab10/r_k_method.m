function [y,x] = r_k_method(x_0,y_0,F_xy,h,x_n)                                             % step size
x = x_0:h:x_n;
y=zeros;
y(1) = y_0;
for it=1:(length(x)-1)                              
    k_1 = F_xy(x(it),y(it));
    k_2 = F_xy(x(it)+0.5*h,y(it)+0.5*h*k_1);
    k_3 = F_xy((x(it)+0.5*h),(y(it)+0.5*h*k_2));
    k_4 = F_xy((x(it)+h),(y(it)+k_3*h));
    y(it+1) = y(it) + (1/6)*(k_1+2*k_2+2*k_3+k_4)*h;  
end
end

