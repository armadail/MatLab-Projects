giventable = [0 0 0
0.005 0.0102 -0.0052
0.0075 0.0134 -0.0064
0.0125 0.017 -0.0063
0.025 0.025 -0.0064
0.05 0.0376 -0.006
0.1 0.0563 -0.0045
0.2 0.0812 -0.0016
0.3 0.0962 0.001
0.4 0.1035 0.0036
0.5 0.1033 0.007
0.6 0.095 0.0121
0.7 0.0802 0.017
0.8 0.0597 0.0199
0.9 0.034 0.0178
1.0 0 0];
x_axis = 0 : 0.001: 1;
x = giventable(: , 1);
yu = giventable(: , 2);
yl = giventable(: , 3);


yu_spline = interp1(x , yu , x_axis ,'spline');
yl_spline = interp1(x , yl , x_axis ,'spline');
plot(x_axis, yu_spline , x_axis, yl_spline);
title('spline');
yu_matlab = polyval(polyfit(x,yu,4),x_axis);
yl_matlab = polyval(polyfit(x,yl,4),x_axis);
figure; plot(x_axis, yu_matlab , x_axis, yl_matlab);
title('global interpolation');

