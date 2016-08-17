%Lab3_PB3
x = linspace(0,10,21)
f = @(x) (1+ cos(pi*x))./(1+x);
y=f(x);
t = linspace(0,10,200);
yt = Lagrange(x,y,t);
plot(x,y,'o',t,yt,t,f(t));
legend('nodes','Lagrange','f','Location','brt')