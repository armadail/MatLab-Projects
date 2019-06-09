syms x;
f1 = 6.*(x.^3) + 19.*(x.^2) - 19.*x + 4;
f2 = ((x.^2) - 5.*x +6)/((x.^2) - 4);
%a)
disp('factors of f1');
disp(factor(f1));
disp('factors of f2');
disp(factor(f2));
disp('simplified form of f1*f2');
disp(simplify(f1.*f2));
disp('simplified form of f1/f2');
disp(simplify(f1./f2));
disp('simplified form of (f1*f2)^2');
disp(simplify((f1.*f2).^2));
%b)
disp('derivative of f1');
disp(diff(f1));
disp('second derivative of f1');
disp(diff(f1,2));
disp('derivative of f1');
disp(diff(f2));
disp('second derivative of f1');
disp(diff(f2,2));
disp('integral of f1');
disp(int(f1,2,4));
disp('integral of f2');
disp(int(f2,2,4));
%c
syms t;
h = -0.12.*(t.^4) + 12.*(t.^3) - 380.*(t.^2) + 4100.*t + 220;
h1 = diff(h);
h2 = diff(h , 2);
dropt= double(solve( h == 0 , t > 0));
maxt = double(solve( h1 == 0 , t > 0));
disp('time balloon hits ground in seconds');
disp(dropt);
disp('maximum height in meters');
maxh = -0.12*((max(maxt))^4) + 12*((max(maxt))^3) - 380*((max(maxt))^2) + 4100*(max(maxt)) + 220;
disp(maxh);
hold on
fplot(t , h , [0 , dropt]);
fplot(t , h1 , [0 , dropt]);
fplot(t , h2 , [0 , dropt]);

