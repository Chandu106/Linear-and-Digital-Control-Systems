clc;
clear all;

//feeding transfer function from numerator and denominator method

num = [1];
den = poly([0 0.1 10], 's', 'c');
P1 = syslin('c', num,den);
disp(P1)

num = poly([0 0.1 10], 's', 'c');
den = poly([0 0.1 10], 's', 'c');
P2 = syslin('c', num, den)
disp(P2)

//feeding transfer function direct method

s = poly(0, 's');
sys = s/(s^2+2*s+1);
P3 = syslin('c', sys)
disp(P3)
