function fi = Lagrange(x,y,xi)
%x - nodes
%y - function values
%xi - evaluation points
%LAGRANGE - Lagrange interpolation polynomial
%call fi = Lagrange(x,y,xi)
%fi -  contains the polynomial values
%fi - has the same size as xi

if nargin ~= 3
    error('Illegal number of arguments');
end
[mu, nu] =size(xi);
fi = zeros(mu,nu);
npl = length(y);
for i=1:npl
    z = ones(mu,nu);
    for j=[1:i-1, i+1:npl]
        z = z .* (xi-x(j))./(x(i)-x(j));
    end
    fi = fi + z*y(i);
end
