
F = input('enter the drag force');
V = input('enter the air velocity');
A = input('enter the surface area');
rho = input('enter the air density');

C = F./(rho.*V.^2.*A./2);

V = 0:1:150;
F=C.*(rho.*V.^2.*A./2);
plot (V,F)
xlabel('Velocity')
ylabel ('Drag Force')