x = [0,pi/6,pi/4,pi/3,pi/2];
y = sin(x); % y = [0,1/2, sqrt(2)/2,sqr(3)/2,1]
xi = pi/5;
v = Lagrange(x,y,xi);

xi = linspace(0,pi/2,100);
v2 = Lagrange(x,y,xi);
plot(x,y,'o',xi,v2,xi,sin(xi));
legend('nodes','L_{m}f','f','Location','best');

figure(2)
plot(xi,abs(sin(xi)-v2))
title('Error')