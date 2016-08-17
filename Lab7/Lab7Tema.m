%Pb1 Lab7
f1=@(x) 2./(1+x.^2);
a1=0;
b1=1;
i1 = trapez(f1,a1,b1,10)
%c
is = Simpson(f1,a1,b1,10)
%b
x = [0,0,1,1];
y=[0,f_1(0),f_1(1),0];
p=linspace(-1,2,100);
yy=f1(p);
figure
plot(x,y,'b',p,f1(p),'r')
%Pb2 Lab7
a21=1.4;
b21=2;
a22=1;
b22=1.5;
f2=@(x,y) log(x+2*y);
i2=doubletrapez(f2,a21,b21,a22,b22)
%Pb3Lab7
r=110;
x=75;
a=0;
b=2*pi;
f3=@(o) (1-(x/r).^2*sin(o)).^(1/2);
i= Romberg(f3,a,b);
H= (60*r/(r^2-x^2))*i;
%Pb4Lab7
a4=0;
b4=pi;
f4=@(x) 1./(4+sin(20.*x));
i4 = Simpson(f4,a4,b4,10)
i4 = Simpson(f4,a4,b4,30)
