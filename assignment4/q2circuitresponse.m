syms t L;
%a) natural response a
a = dsolve('D2V + (2/3)*DV + V/(1/2) = 0/(1/2)' ,'V(0)=10','DV(0)=2');
disp(a);
%b) natural response b
b = dsolve('D2V + (3)*DV + V/(1/2) = 0/(1/2)' ,'V(0)=10','DV(0)=2' );
hold on
fplot(t, a, [0, 10]);
fplot(t, b, [0, 10]);

