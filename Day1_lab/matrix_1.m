clc;
clear all;
C=input("Enter number of row : ");
for i=1:C
    for j=1:C
        K=input("enter : ");
        A(i,j)=K;
    end
end
%for inverse "inv(A)"
%for determinet "det(A)"
%for add A and B "A+B"
%for multipication "A*B"
%for transpose "A'"
%access any element of the martix is "A(i,j)" A(row,column)
%access only i th column "A(:,i)"
%access only j th row "A(j,:)"
%eigen and eigen vector and diagonal martix
E=eig(A);
%returen set of eigen values
[V,D]=eig(A);
%return D diagonal martix,return V such that A*V=V*D

