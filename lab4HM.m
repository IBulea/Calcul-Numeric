function z = lab4HM(x,f,w,t)
v = ones(size(t));
l = zeros(size(t));
lx = length(x);
z =zeros(size(t));
for k=0:lx
  v = v.*(t-x(k+1));
end
for k=0:lx
  l(k+1)=w(k+1)* v/(t-x(k+1));
end
for k=0:lx
  z = z+l(k+1)*f(k+1);
end