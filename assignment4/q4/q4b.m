x= zeros(3000);
y= zeros(3000);
for i = 1 :1:2999 %x index
    x(i+1) = y(i).*(1 + sin(0.7.*x(i))) - 1.2.*((abs(x(i)).^0.5));
    y(i+1) = 0.21 - x(i);
end
plot(x, y,'.');
    
    
    