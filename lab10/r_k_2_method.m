function [y,x] = r_k_2_method(x_0,y_0,F_xy,h,x_n)                                             % step size
x = x_0:h:x_n;
y=zeros;
y(1) = y_0;
for it=1:(length(x)-1)                              
    k_1 =h* F_xy(x(it),y(it));
    k_2 =h* F_xy(x(it)+0.5*h,y(it)+0.5*k_1);
    y(it+1) = y(it) + k_2;  
end
end

