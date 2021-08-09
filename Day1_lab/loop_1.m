%basic for loop and while loop
clc;
clear all;
n=linspace(1,2,3);
%linspace(strat,end,no_of_divid_part)
%here strat=1, end=2, end divided this into parts
for i=1:3
    disp(n(i));
end
X="this is working in this code it si ok see it";
disp(X);
fprintf(X);
fprintf("\n");
i=0;
while i<10
    fprintf('done \t');
    i=i+1;
end
fprintf("\n");