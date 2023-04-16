%%%%%%%%%%%%  Question 4
clear all
close all
clc


time=0:10;
x = rectangularPulse((time-7)/4) .* 10.*exp(-0.2.*time);
subplot(3, 1,1),plot(x),grid
xlabel('time')
title('\pi((time-7)/4) * 10 *exp(-0.2*time)')
h = rectangularPulse((time-1)/2) .* 10.*exp(0.2.*time);
subplot(3, 1,2),plot(h),grid
xlabel('time')
title('\pi((time-1)/2) * 10 *exp(0.2*time)')
y=conv(x,h)
subplot(3, 1,3),plot(y),grid
xlabel('time')
title('The convolution of the functions')