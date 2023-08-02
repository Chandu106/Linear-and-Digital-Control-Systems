// First order Electrical system
clc;
clear all;

V = input('Enter the value of input voltage:');  //V=1 V
R = input('Enter the value of resistance:');   //R=2000 ohm
C = input('Enter the value of capacitance:'); //C=0.01  F
s=poly(0,'s'); 
t = 0:0.05:350
subplot(2,3,3)
sys1_elec = 1/((s*R*C)+1)
plot2d(t, csim('step',t,sys1_elec))
title("First order electrical system")
