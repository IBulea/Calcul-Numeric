function [L,U,P]=lup(A)
%LUP -  find LUP decomposition
%call [L,U,P]=lup(A)
%permute effectively lines
[m,n]=size(A);
piv=(1:m)';
for i=1:m-1
    %pivoting
    [u,kp]=max(abs(A(i:m,i)));
    kp=kp+i-1;
    if u==0
        error('No unique solution');
    A([i,kp],:)=A([kp,i],:);
    piv([i,kp])=piv([kp,i]);
    end
    lim=i+1:m;
    A(lim,i)=A(lim,i)/A(i,i);
    A(lim,lim)=A(lim,lim)-A(lim,i)*A(i,lim);
end
U=triu(A);
L=tril(A,-1)+eye(m);
P=zeros(m);
for i=1:m
    P(i,piv(i))=1;
end
%HOMEWORK!!!!
%forward subst
%backward subst
%function x =lupsolve(A,b)
%[L,U,P]=lup(A);
%y=forwardsubst(L,P*b)
%x=backsubst(U,y)
