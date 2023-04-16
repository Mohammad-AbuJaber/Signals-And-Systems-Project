%%%%%%%%%%%%  Question 1
clear all
close all
clc

%Q1_a
time1=-5:0.02:5;
x1=stp_fn(time1+3)-stp_fn(time1-4);
subplot(3,1,1),plot(time1,x1),grid
xlabel('t')
ylabel('Y(t)')
title('Q1_a: X1(t) = u(t+3)- u(t-4)')


%Q1_b
syms time2 n
summation = symsum(rectangularPulse((time2-(3.*n))/2),n,-Inf,Inf);
subplot(3,1,2),fplot(summation),grid
xlabel('t')
ylabel('Y(t)')
title('Q1_b: Finite pulse \pi((t-3*n)/2)')


%Q1_c
time3=0:0.1:16;
x2=stp_fn(time3-4)+rmp_fn(time3-4)-2.*rmp_fn(time3-7)+rmp_fn(time3-13);
subplot(3,1,3),plot(time3,x2),grid
xlabel('t')
ylabel('Y(t)')
title('Q1_c: X2(t)= u(t-4) +r(t-4)-2r(t-7) +r(t-13) in the time interval [0 16]')