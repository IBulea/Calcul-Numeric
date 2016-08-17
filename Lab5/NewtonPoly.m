function v = NewtonPoly(x,td,t)
%NEWTONPOLY - Newton interpolation polynomial
%call v = Newtonpoly(x,td,t)
%x - nodes
%td - the divided difference table (DD table)
%t - evaluation points
%v - values of Newton polynomial
lx =length(x);
v = zeros(size(t));
u = ones(size(t));
%u(:,1) = 1;
for k = 1 : lx
    v=v+u.*td(1,k);
    u=u.*(t-x(k));
end
