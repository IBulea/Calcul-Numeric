%Lab5
function [z,td] = divdiffdn(x,f,fd)
%DIVDIFFDN - divided differences table with double nodes
%call [z,td] = divdiffdn(x,f,fd)
%x-nodes
%f-function value
%fd-derivative values
%z-doubled nodes
%td - divided difference table
z = zeros(2*length(x),1);
lz=length(z);
td=zeros(lz,lz);
x=x(:); 
f=f(:); 
fd=fd(:);
z(1:2:lz-1)=x;
z(2:2:lz)=x;
td(1:2:lz-1)=f;
td(2:2:lz)=f;
td(1:2:lz-1,2)=fd;
td(2:2:lz-2,2) = diff(f)./diff(x);
for j=3:lz
    td(1:lz-j+1,j)=diff(td(1:lz-j+2,j-1))./(z(j:lz)-z(1:lz-j+1));
end