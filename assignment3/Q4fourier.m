%fourier series function
k = 1;
y = @(n , x) ((2.*k.*(1 - cos(n.*pi)))./(n.*pi)).*sin(n.*x);

ysum = zeros(1,151);
UL = [5 20 50 200];
x = 0:0.1:15;

hold on

for i = 1 : 1: 151 %for every x value
    for j = 1: 1: UL(4) %sum up the function from 1 to upper limit value
        ysum(i) = ysum(i) + y(j , x(i)); %hold the y value into an array to be plotted
    end
end
plot(x , ysum);

%as n gets larger the fourier series becomes more percise




