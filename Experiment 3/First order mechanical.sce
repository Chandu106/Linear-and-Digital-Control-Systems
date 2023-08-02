//first order mechanical system
clc;
clear;
clf;
s = poly(0,'s');
F = input("Enter the value of input force: ")//500N
M = input("Enter the value of mass: ")//1000kg
B = input("Enter the value of frictional coefficient: ")//50 Ns/m
t = 0:0.05:350
mech1 = 1 / (M*s + B)
subplot(2, 3, 1)
plot2d(t, csim('step', t, mech1))
title("First order mechanical")
