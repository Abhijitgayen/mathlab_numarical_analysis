clear All;
clc;
fn=@(x)(x.^6 -(x.^2).*sin(2.*x));
a=input("Enter a:");
b=input("Enter b:");
n=input("Enter n:");
val1=zeros;
val2=zeros;
for j=2:n
for it=1:3
    val1(it,j) =newton_cotes_closed(fn,a,b,it*j,it);
    val2(it,j)=newton_cotes_open(fn,a,b,it*j,it);
end
end
for j=2:n
	fprintf("value of inegral for newton cotes closed  is:\n");
    for it=1:3
        fprintf("%s\n",num2str(val1(it,j)));
    end
fprintf("value of inegral for newton cotes open is:\n");
    for it=1:3
        fprintf("%s\n",num2str(val2(it,j)));
    end
end