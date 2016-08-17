y = 10:0.1:11;
x = y.^2;
xi = 115;
m = length(x);
vsqrt = lab3(x,y,xi)
rest = abs(prod(xi - x).* prod(1/2-(0:m)) * 10 ^ (1/2 - m - 1))/factorial(m+1)