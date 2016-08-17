n=200;
A1=tril(-ones(n,n-1),-1)+eye(n,n-1);
A1=[A1,ones(n,1)]
b1=A1*ones(n,1)