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
subplot(1, 4, 1)
plot2d(t, csim('step', t, mech1))
title("First order mechanical")

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
subplot(1, 4, 2)
plot2d(t, csim("step", t, mech2))
title("Second order mechanical")


// First order Electrical system
clc;
clear all;

V = input('Enter the value of input voltage:');  //V=1 V
R = input('Enter the value of resistance:');   //R=2000 ohm
C = input('Enter the value of capacitance:'); //C=0.01  F
s=poly(0,'s'); 
t = 0:0.05:350
subplot(1, 4, 3)
sys1_elec = 1/((s*R*C)+1)
plot2d(t, csim('step',t,sys1_elec))
title("First order electrical system")


//damping ratio
clc;
clear;

s=poly(0,'s'); 
t=0:0.01:80;
w = input('Enter the value of natural frequency of oscillation:')
subplot(1, 4, 4)
for i=1:5 //z=0.1, 0.4, 0.7, 1.0, 2.0
    z(i)=input('Enter the value of damping coefficient:');
    sys=(w*w)/(s^2 + (2*w*z(i)*s)+ w*w)
    plot2d(t,csim ('step', t, sys))
end
title("Effect of damping ratio on second order system")
