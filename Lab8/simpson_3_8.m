function [in_val] = simpson_3_8(a,b,n,fn)
while rem(n,3)~=0
    % we need to cheack that n is divisiable by 3
    fprintf("Enter the number multiple of 3:\n");
    n=input("enter n:");
end
h=(b-a)/n;
x=linspace(a,b,n+1);
in_val= ((3.*h)/8).*sum(fn(x).*[1,3,3,repmat([2,3,3],1,(n-3)/3),1]);
%mainly we use repmat to repeated the elements 2 3 3 in this array.this is
%horizontal array.
end

