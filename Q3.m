%%%%%%%%%%%%  Question 3
clear all
close all
clc

syms y(t)
equation = diff(y,t) == 20 - 30*y(t);
Solution_before_using_zero_initial_conditions = dsolve(equation);
condition = y(0) == 0;

%Q3_a
Fina_Answer = dsolve(equation,condition)

%Q3_b
Fs = 100;
dt = 1/Fs;
StopTime = 1;
t = (0:dt:StopTime-dt)';
N = size(t,1);
Fc = 12;

%The value of x has been taken from Q3_a and then it was added to Q3_b
x = 2/3 - (2*exp(-30*t))/3;
T_F = fft(x);
T_F = fftshift(fft(x));
T_F
dF = Fs/N;
f=-Fs/2:dF:Fs/2-dF;
subplot(3,1,1),plot(f,abs(T_F)/N),grid;
xlabel("Frequency (Hz)");
title ("Magnitude Response");

%Q3_c
Value_Of_T_F = abs(T_F)
Phase_Of_T_F = angle(T_F)
subplot(3,1,2),plot(t,abs(T_F)),grid;
title ("Magnitude");
subplot(3,1,3),plot(angle(T_F)),grid;
title ("Phase");