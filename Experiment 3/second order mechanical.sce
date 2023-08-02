//second order mechanical 
clc;
clear all;
s = poly(0, "s")
F = input('Enter the value of input force:');  //F=300 N
M = input('Enter the value of mass:');  //M=750 kg
B = input('Enter the value of friction coefficient:'); //B=30 Ns/m
K = input('Enter the value of spring constant:');  //K=1 N/m
t = 0:0.05:350
mech2 = 1 / ((M*s*s) + (B*s) + K);
subplot(2,3,2)
plot2d(t, csim("step", t, mech2))
title("Second order mechanical")
