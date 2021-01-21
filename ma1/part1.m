%% Clear the workspace and command window
clc;
clear;
%part1
Ts = 0.0001;
f0 = 440;
% f0 = 880;
% f0 = 1760;
t = (0:Ts:3);
%sampled signal
x1 = sin(2*pi*f0*t);
plot(t,x1);
xlim([0 0.01]);
ylabel('X1');
xlabel('t(s)');
soundsc(x1);



%%combine the sins
s = sin(2*pi*440*t) + sin(2*pi*554*t) + sin(2*pi*659*t);
plot(t,s);
xlim([0 0.01]);
ylabel('S');
xlabel('t(s)');
soundsc(s);

%Part2
phase = 0;
% phase = pi/4;
% phase = pi/2;
% phase = 3*pi/4;
% phase = pi;
x2 = cos(2*pi*587*t + phase);
plot(t,x2);
xlim([0 0.01]);
ylabel('X2');
xlabel('t(s)');
soundsc(x2);

%part3
a = 3;
x3 = exp(-(a*a+2)*t).*cos(2*pi*f0*t);
plot(t,x3);
xlim([0 0.01]);
ylabel('X3');
xlabel('t(s)');
soundsc(x3);

%part4
f1 = 5;
f2 = 15;
% f1 = 100;
% f2 = 200;
% f1 = 100;
% f2 = 150;
% f1 = 100;
% f2 = 100;
x4 = cos(2*pi*f1*t).*cos(2*pi*f2*t);
%x4 = (1/2)*(cos(2*pi*t*(f1+f2)) + cos(2*pi*t*(f1-f2)));
plot(t,x4);
xlim([0 0.01]);
ylabel('X4');
xlabel('t(s)');
soundsc(x4);


%%part5
% 
Ts2 = 0.0001;
f1 = 2500;
f5 = 500;
tmu = 2;
t2 = (0:Ts2:2);
mu = f5-f1/tmu;
f = 2*mu*t2 + f1;
phase = 0;
x5 = cos(2*pi*2*mu*(t2.*t2)+2*pi*f1*t2 + phase);
plot(t2,x5);
xlim([0 0.01]);
ylabel('X5');
xlabel('t(s)');
soundsc(x5);

%%chirp Puzzle
Ts2 = 0.0001;
f1 = 3500;
f5 = -2000;
tmu = 3;
t2 = (0:Ts2:3);
mu = f1-f5/tmu;
f = 2*mu*t2 + f1;
phase = 0;
x5 = cos(2*pi*mu/2*(t2.*t2)+2*pi*f1*t2 + phase);
plot(t2,x5);
xlim([0 0.01]);
ylabel('X5');
xlabel('t(s)');
soundsc(x5);

