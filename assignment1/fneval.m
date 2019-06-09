%3a)
y1 = cos(tan(x)) - tan(cos(x));
%3b)
y2 = exp(-0.7.*x) + ((1-sin(2.*x))./(x + (tan(x.*x).^2)));
%3c)
y3 = (1+x./(x-0.5))./(1+(3.1.*x.*exp(-x)+2)./(sin(x)-cos(x.^2).^2));
%3d)
y4 = 5.0^(0.35)+2.1.*log(2.7^3.2) + atan(0.33);


x = -2*pi: pi/12: 2*pi;
%plot (x , y1);
plot (x,y2);
%plot (x,y3)

