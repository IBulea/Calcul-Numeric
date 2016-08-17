%Polynomials
%1
 p = [2,-5,0,8];
 x =2;
 y = polyval(p,x);
 
 %2 
 p= [1,-5,-17,21];
 roots(p);
 
 %Graphs
 %2
 x = 0 : .1 : 2*pi;
 f1 = cos(x);
 f2 = sin(x);
 f3 = cos(2*x);
 plot(x,f1,'color','r'); hold on;
 plot(x,f2,'color','b'); hold on;
 plot(x,f3,'color','g');
 
 %3-?????? don't know how to do this
  x = 0 : 1 : 50;
  f = maple('piecewise', 'mod(x,2) == 0', 'x/2', 'mod(x,2)==1', '3*x+1')
  plot(x,f);
  
  %4
  plot(fft(eye(17)))
  plot(fft(eye(17))); axis equal; axis square;
  plot(fft(eye(17))); axis equal; axis off;
  
  %5
  g= 1+ 1/(1+1/(1+1/(1+1/(1+1/(1+1)))));
  