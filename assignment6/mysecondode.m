function dV = mysecondode(t,V)
R = 2/3;
L = 1;
C = 1/2;
Vs = 1;
dV(1) = V(2);
dV(2) = Vs/(L*C) - (R/L)*dV(1) - V(1)/(L*C);
dV = [dV(1) ; dV(2)];