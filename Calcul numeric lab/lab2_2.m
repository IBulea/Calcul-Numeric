function T = chebpoly(x,n)
x = x(:);
lx=length(x)
T=zeros(lx,n+1);
T(:,1)= ones(lx,1);
T(:,2) = x;
if(n>=2)
    for(k=2:n)
        T(:,k+1)= 2*x*T(:,k) - T(:,k-1);
    end
end
