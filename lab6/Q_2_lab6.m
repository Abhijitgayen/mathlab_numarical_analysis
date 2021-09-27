clc;
clear ALL;

x = [ 3.0, 4.5, 7.0, 9.0];
y = [2.5,1.0,2.5,0.5];

[s0,s1,s2,s3] = cubic_spline_me(x',y');

 

plot(x,y,'g');
hold on;
plot_cubic_spline_me(x,s0,s1,s2,s3);