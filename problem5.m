n=1000;
h=1/(n+1);
t=[2,-1,zeros(1,n-2)];
K=toeplitz(t);
K(1,1)=1;
y=h*h*ones(n,1);
rank(K);
x=0:n+1;
xx=h*x;
uu=K\y;
u=[uu(1,1);uu;uu(n,1)];
plot(xx,u)
x2=xx.*xx;
ureal=0.5*(ones(n+2,1)-x2');
err=ureal-u;
err_norm=norm(err,'inf');
disp('error norm=:')
disp(err_norm)