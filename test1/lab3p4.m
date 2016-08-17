f = @(x)(1./(1+x.^2));
xe = linspace(-5,5,15);
ye = f(xe);
t = linspace(-5,5,1000);
ve = lab3(xe,ye,t);
m = 15;
j = 1 : m;
x = cos(2* (j -1)*pi/2/m);
xc = 5 * x;
yc = f(xc);
vc = lab3(xc,yc,t);
figure(1)
plot(t,ve,t,f(t));
title('Equidistant nodes')
figure(2)
plot(t,vc,t,f(t));
title('Checychev nodes')