function fi = Lagrange(x,y,xi)
%Lagrange interpolation polynomial
%call fi = LAGRANGE(x,y,xi)
%x = vector of nodes
%y = vector of function values
%xi = evaluation points
%fi  - polynomial values; has the same size as xi

%Test arguments: if margin != 3 => ERROR: ILLEGAL NUMBER OF ARGUMENTS
%                if length(x) != length(y) => ERROR!!
%[nu,nu] - size of xi
%fi = zeros

if nargin ~=3
    error('Illegal number of arguments.')
end
[mu,nu] = size(xi)
fi = zeros(mu,nu)
npl = length(y);
for i = 1: npl
    z = ones(mu,nu)
    for j = [1:i-1, i+1:npl]
        z = z .* (xi - x(j))./(x(i) - x(j))
    end
fi = fi + z*y(i)
end

%Compute sin(pi/5) sinx, (Lmf)(x)

