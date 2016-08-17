a=0;
b=pi;
f=@(x) sin(x);
i1 = Simpson(f,a,b,10)
%ii1 = trapez(f,a,b,10)

a1=0;
b1=1;
f1=@(x) 4./(1+x.^2);
i2 = Simpson(f1,a1,b1,10)
%i1 = trapez(f,a,b,10)

f2=@(x) 2./(1+x.^2);
[v1,ni] = Romberg(f2,0,1,1e-5)
vi2=trapez(f,0,1,ni)