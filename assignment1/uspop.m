%6

t = 1790:10:2000;
p = 197273000./(1+ exp(-0.03134.*(t-1913.25)));
disp ('time       population');
disp ( [t' p']);

plot(t , p);

