%complex matrix and tranpose of this matrix
clc;
clear all;
%for write complex number you need to use "comple(1st,2nd)".
z=complex(1,2);
n=input("enter no of row : ");
for i=1:n
    for j=1:n
        a=input('x=');
        b=input('y=');
        A(i,j)=complex(a,b);
    end
end
%this give us the transpose(not conjgae transpose) of complex martix A
%for conjugate tranpose you need to use "A'"
for i=1:n
    for j=1:n
    B(j,i)=A(i,j);
    end
end
%all other operation and working working same as i do in the matrix_1.
