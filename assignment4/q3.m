syms t;
NR = dsolve('D2V + 5*DV + 6*V = 0' ,'V(0)=10','DV(0)= -2' );
FR1 = dsolve('D2V + 5*DV + 6*V = 8' ,'V(0)=10','DV(0)= -2' );
FR2 = dsolve('D2V + 5*DV + 6*V = 3*exp(-4*t)' ,'V(0)=10','DV(0)= -2');
CR1 = NR + FR1;
CR2 = NR + FR2;
disp(NR);
disp(FR1);
disp(FR2);
hold on
fplot(t, NR, [0, 5]);
fplot(t, FR1, [0, 5]);
fplot(t, FR2, [0, 5]);
fplot(t, CR1, [0, 5]);
fplot(t, CR2, [0, 5]);
%after a short period of time the response of each circuit all converge to
%a fixed number.