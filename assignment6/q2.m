x = [805 825 845 865 885 905 925 945 965 985];
y = [0.710 0.763 0.907 1.336 2.169 1.598 0.916 0.672 0.615 0.606];
x_axis = 800: 1 : 1000;
y3 = interp1(x , y , x_axis ,'spline');

y9 = polyval(polyfit(x,y,9),x_axis);
plot(x , y ,'o', x_axis , y3, 'g', x_axis , y9 , 'b');

%the 9th order polynomial deviates more from the data set when
%interpolating.This is especialy apparent at the end values.

