function [in_r,in_rs] = plot_fun(fn)
ok=0;
while(ok==0)
    fprintf("Enter value X1 and X2 to ploat graph\n");
    x1=input("enter x1 :");
    x2=input("enter x2 :");
    xval=linspace(x1,x2,200);
    val=zeros(1);
    for it=1:200
    val(it)=fn(xval(it));
    end
    plot(xval,val);
    ok=input("is this graph clear?(0/1) :");
    if(ok==1)
        in_r=input("Enter initial root : ");
        in_rs=input("Enter second initial root : ");
    end
end

end

