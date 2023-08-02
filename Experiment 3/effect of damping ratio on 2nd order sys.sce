//damping ratio
clc;
clear;

s=poly(0,'s'); 
t=0:0.01:80;
w = input('Enter the value of natural frequency of oscillation:')
subplot(1,8,8)
for i=1:5 //z=0.1, 0.4, 0.7, 1.0, 2.0
    z(i)=input('Enter the value of damping coefficient:');
    sys=(w*w)/(s^2 + (2*w*z(i)*s)+ w*w)
    plot2d(t,csim ('step', t, sys))
end
title("Effect of damping ratio on second order system")
