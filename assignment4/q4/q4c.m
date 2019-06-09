n = 0:1:1000;
d = [137.51 , 137.45 , 137.92];

for i = 1 : 1 : 3
    r = n.^0.5;
    theta = pi.*d(i).*n./180;
    x = r.*cos(theta);
    y = r.*sin(theta);
    figure(i);
    plot(x , y,'o')
end


