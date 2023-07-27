// electrical system
clc;
clear all;

S=poly(0,'S');
R=input('Enter the Resistance')//1000
C=input('Enter the capacitance value:'); //enter 160*10^-6
el=1/((R^2*C^2*S^2)+(3*R*C*S)+1);
t=0:0.05:5;
subplot(2,3,3)
plot2d(t,csim ('step', t, el))
subplot(2,3,4)
plot2d(t,csim ('impulse', t, el))
