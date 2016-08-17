m =15;
x=zeros(m+1);
w=zeros(m+1);
x2=zeros(m+1);
w2=zeros(m+1);
for k=0:m
x(k+1) = cos(((2*k+1)*pi)/(2*m+2)); %chebysev nodes
w(k+1) = (-1).^k *sin(((2*k+1)*pi)/(2*m+2)); %chebyshev weigths
x2(k+1) = cos(k*pi/m); %chebysev 2 nodes
end
Rho = zeros(m+1);
Rho(1)=1/2;
Rho(m+1)=1/2;
for i = 2:m
  Rho(i) = 1;
  end
for k=0:m
  w2(k+1)= (-1).^k* Rho(k+1); %chebyshev 2 weights
end
%equidistand nodes
xe = linspace(-1,1,15);
we = zeros(length(xe)+1);
for k=0:m
  we(k+1) = (-1).^k * k;
end

%functions
fun =@(x) abs(x);
f=fun(x);
f2=fun(x2);
fe = fun(xe);

t = linspace(-1,1,15);
z =lab4HM(x,f,w,t);