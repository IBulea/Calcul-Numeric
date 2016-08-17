%function
x = [0,pi/6, pi/4, pi/3, pi/2];
y = sin(x);

xi = pi/5;
v = lab3(x,y,xi)

% if nargin ~=3
%     error('Illegal number of arguments!');
% end

xi = linspace(0,pi/2,100);
v2 = lab3(x,y,xi)
plot(x,y,'o',xi,v2,xi,sin(xi))
legend('nodes','L_{m}f','f','Location','best')

figure(2)
plot(xi,abs(sin(xi) - v2))
title('Error')