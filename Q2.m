%%%%%%%%%%%%  Question 2
clear all
close all
clc

t = -0.03:0.000005:0.03;
y1 = sin(200*pi*t);
y2 = cos(500*pi*t);
productOfTwoSignals = y1.*y2;

%sin(200*\pi*t)
subplot(4,1,1),plot(t,y1);
ylabel("sin(200*\pi*t)");
xlabel("t");
title("Y1 Vs. time");

%cos(500*\pi*t)
subplot(4,1,2),plot(t,y2);
title("Y2 Vs. time");
ylabel("cos(500*\pi*t)");
xlabel("t");

%(sin(200*\pi*t))*(cos(500*\pi*t))
subplot(4,1,3),plot(t,productOfTwoSignals);
title("<Y1*Y2> Vs. time");
ylabel("(sin(200*\pi*t))*(cos(500*\pi*t))");
xlabel("t");

%All signals
subplot(4,1,4),plot(t,y1,t,y2,t,productOfTwoSignals);
title("All signals");
xlabel("t");
legend({'y1 = sin(200\pit)','y2 = cos(500\pit)','product =sin(200\pit)*cos(500\pit)'},'Location','eastoutside')
    
pks = findpeaks(productOfTwoSignals)