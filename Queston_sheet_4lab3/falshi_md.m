function [root,step]=falshi_md(fn,e,a,b)

%a = input('Enter first guess: ');
%b = input('Enter second guess: ');

% Finding Functional Value
fa = fn(a);
fb = fn(b);
% Implementing Bisection Method
while( fa*fb > 0 )
    disp('Given initial values do not bracket the root.so enter two initial root again');
    a = input('Enter first guess: ');
    b = input('Enter second guess: ');
end
c = a - (a-b) * fa/(fa-fb);
fc = fn(c);
fprintf('\t\na\t\t\tb\t\t\tc\t\t\tf(c)\n');
step=1;
while abs(fc)>e
    step=step+1; 
        fprintf('step:%d\t%f\t%f\t%f\t%f\n',step-1,a,b,c,fc);
        if fa*fc< 0
            b =c;
            fb = fn(b);
        else
            a =c;
            fa = fn(a);
        end
        c = a - (a-b) * fa/(fa-fb);
        fc = fn(c);
end
root=c;
end