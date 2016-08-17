%Orthogonal and Taylor polynomials.
%Finite and divided differences

x=linspace(-1,1,150);
T = chebpoly(x,6);
plot(x,T);
L = call(7);
for i=0;6
    L{i}=sprintf('T_{%d}',i)
end
legend(L,'Locaton','brt');