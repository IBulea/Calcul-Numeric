function I=doubletrapez(f,a,b,c,d);
%TRAPEZ formula trapezelor
%apel I=trapez(f,a,b,c,d,n);

h=(b-a)*(d-c)/16;
I=(f(a,c)+f(a,d)+f(b,c)+f(b,d)+2*f((a+b)/2,c)+2*f((a+b)/2,d)+2*f(a,(c+d)/2)+2*f(b,(c+d)/2)+4*f((a+b)/2,(c+d)/2))*h;