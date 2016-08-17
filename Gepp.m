function x = Gepp(A,b)
%GEPP Gaussian Elimination with Partial Pivoting
%call x=Gepp(A,b)
%A-matrix
%b - right hand side of the system
%x- solution

%construction of extended matrix [A,b]
%pivoting [vp,pp]=max(abs(A(i:m,k)))  - > we are at column i
%vp -value of pivot
%pp position pivot
%[A,b];
%[vp,pp]=max(abs(A(i:m,k)));
%pp=pp+i-1;
%piv=1:m;
%if pp~=i
%    A([i,pp],i:n+1)=A([pp,i],i:n+1);
%    piv([i,pp])=piv([pp,i]);
%end
%end pivoting part
%j=i+1:m;
%mg - multiplicator gaussian
%mg=A(j,i)/A(i,i);
%A(j,i+1:m+1)=A(j,i+1:m+1)-mg*.A(....)
[l,n]=size(A);
x=zeros(size(b));
A=[A,b];
%Elimination
for i=1:n-1
    %pivoting
    [v,p]=max(abs(A(i:n,i)));
    p=p+i-1;
    if v==0
        error('no unique solution');
    end
    if p~=i
        A([i,p],i:n+1)=A([p,i],i:n+1);
    end
    j=i+1:n;
    m=A(j,i)/A(i,i); %multiplier
    A(j,i+1:n+1)=A(j,i+1:n+1)-m*A(i,i+1:n+1);
end
%back substitution
x(n)=A(n,n+1)/A(n,n);
for i=n-1:-1:1
    x(i)=(A(i,n+1)-A(i,i+1:n)*x(i+1:n))/A(i,i);
end