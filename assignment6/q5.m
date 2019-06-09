[t,y]=ode45(@mysecondode,[0,10],[10 2]);
plot(t,y)
xlabel('time');
ylabel('voltage');