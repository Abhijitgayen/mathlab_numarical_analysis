function [fn] =  hermite_fun(it)
    syms x 
    fn=expand((-1).^(it)* exp(x.^2)*diff(exp((-1).*x.^2),x,it)); 
end

