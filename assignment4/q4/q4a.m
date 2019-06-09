%a)
syms x y;
T = 30.*(y.^2).*exp((-x.^2)-0.3.*(y.^2));
figure(1);
fsurf(T,[-2.2, 2.2, -6, 6]);
figure(2);
fmesh(T,[-2.2, 2.2, -6, 6])
figure(3)
fcontour(T,[-2.2, 2.2, -6, 6]);
