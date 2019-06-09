syms t;
Ac = 1;%carrier amplitude
fc = 1;%carrier frequency(Hz)
Am = 1;%message amplitude
fm = 0.02;%message frequency
kf = 1;%frequcny sensitivity
S = Ac.*cos(2*pi.*fc.*t);%carrier signal
M = Am.*cos(2*pi.*fm.*t);%message signal
Sam = Ac.*(1 +  M)*cos(2*pi.*fc.*t);%AM wave
Sfm = Ac*cos(2*pi.*fc*t + 2*pi.*kf*Am*(Am.*sin(2*pi.*fm.*t)./(2*pi.*fm)));%FM wave
subplot(4,1,1);
fplot(M);
title('message signal');
xlabel('time');
axis([0,100,-1,1]);

subplot(4,1,2);
fplot(S);
title('carrier signal');
xlabel('time');
axis([0,100,-1,1]);

subplot(4,1,3);
fplot(Sam);
title('Am wave');
xlabel('time');
axis([0,100,-1,1]);

subplot(4,1,4);
fplot(Sfm);
title('Fm wave');
xlabel('time');
axis([0,100,-1,1]);
%as the messenger signal aproaches its troughs the  magnitude of the am
%waves' amplitude aproaches zero, and the wave density of the Fm waves
%decrease.
