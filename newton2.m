function z =newton2(x,td,t)
lt=length(t);
lx=length(x);
for j=1:lt
    d=t(j)-x;
    z(j)=[1,cumprod(d(1:lx-1))]*td(1,:)';
end