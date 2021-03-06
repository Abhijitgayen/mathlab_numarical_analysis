clc;
clear All;
close All;
f_xy=@(x,y)((2.*x+1)/(5.*(y.^4)+1));
h1=0.1;
h2=0.05;
h3=0.025;
x_0=2;
x_n=3;
y_0=1;
[y_h1 ,x_h1]=r_k_method(x_0,y_0,f_xy,h1,x_n);
[y_h2,x_h2]=r_k_method(x_0,y_0,f_xy,h2,x_n);
[y_h3,x_h3]=r_k_method(x_0,y_0,f_xy,h3,x_n);

er_1=zeros;
er_2=zeros;
er_3=zeros;
main_sol=@(x,y)(y.^5 + y - x.^2 - x + 4);
fprintf("BY RK 4 method we get\n");
fprintf("%10s\t %10s\t %10s\t %10s\t %10s\t %10s\t %10s\n",'x','y_h1','y_h2','y_h3','er_1','er_2','er_3');
for it=0:9
    er_1(it+1)=(main_sol(x_h1(it+1),y_h1(it+1)));
    er_2(it+1)=(main_sol(x_h2(2*it+1),y_h2(2*it+1)));
    er_3(it+1)=(main_sol(x_h3(4*it+1),y_h3(4*it+1)));    
   fprintf("%10s \t %10s \t %10s\t %10s \t%10s\t%10s\t%10s\n",num2str(x_h1(it+1)),num2str(y_h1(it+1)),num2str(y_h2(2*it+1)),num2str(y_h3(4*it+1)),num2str(er_1(it+1)),num2str(er_2(it+1)),num2str(er_3(it+1)));
    
end

% by rk2 method
[y_h1_2,x_h1_2]=r_k_2_method(x_0,y_0,f_xy,h1,x_n);
[y_h2_2,x_h2_2]=r_k_2_method(x_0,y_0,f_xy,h2,x_n);
[y_h3_2,x_h3_2]=r_k_2_method(x_0,y_0,f_xy,h3,x_n);

er_1_2=zeros;
er_2_2=zeros;
er_3_2=zeros;
main_sol=@(x,y)(y.^5 + y - x.^2 - x + 4);
fprintf(" \n\n BY RK 2 method we get \n");
fprintf(" %10s \t%10s\t %10s\t %10s\t %10s\t %10s\t %10s\n",'x','y_h1_2','y_h2_2','y_h3_2','er_1_2','er_2_2','er_3_2');
for it=0:9
    er_1_2(it+1)=(main_sol(x_h1_2(it+1),y_h1_2(it+1)));
    er_2_2(it+1)=(main_sol(x_h2_2(2*it+1),y_h2_2(2*it+1)));
    er_3_2(it+1)=(main_sol(x_h3_2(4*it+1),y_h3_2(4*it+1)));    
   fprintf("%10s\t%10s \t %10s\t %10s \t%10s\t%10s\t%10s\n",num2str(x_h1_2(it+1)),num2str(y_h1_2(it+1)),num2str(y_h2_2(2*it+1)),num2str(y_h3_2(4*it+1)),num2str(er_1_2(it+1)),num2str(er_2_2(it+1)),num2str(er_3_2(it+1)));
    
end
