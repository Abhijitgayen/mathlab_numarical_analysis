function [sval,asval] = appsin_tlr(x,n)
 sval=sin(x);
 asval=0;
 for i=1:n
     if (mod(i,2)==0)
     asval=asval-(((x^(2*i-1))/factorial(2*i-1)));
     else 
     asval=asval+(((x^(2*i-1))/factorial(2*i-1)));
 end
 %asval=x-((x^3)/factorial(3))+((x^5)/factorial(5))-((x^7)/factorial(7));
end

