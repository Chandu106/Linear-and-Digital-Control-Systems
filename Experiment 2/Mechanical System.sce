// Mechanical System

clc;
clear all;

s = poly(0,'s');
m = input("Enter the mass value: ")//100
b = input("Enter the damping value: ")//50
k = input("Enter the value of spring: ")//75

t1 = 1/((m*s^2)+(b*s)+k)
subplot(2,3,1);
t = 0:0.05:25;
plot2d(t, csim('step',t,t1))
subplot(2,3,2);
plot2d(t, csim('impulse',t,t1))
