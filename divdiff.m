function td = divdiff(x,f)
%Divided difference table
%call td = divdiff(x,f)
%x -nodes
%f -  function values at x
%td - DD table
lx = length(x);
x=x(:);
f=f(:);
td = zeros(lx);
td(:,1) =f;
for j = 2: lx
    td(1:lx-j+1,j)=diff(td(1:lx-j+2,j-1))./(x(j:lx)-x(1:lx-j+1));
end