















// Electro-mechanicaÌ system - armature controlled
clc;
clear all;

S = poly(0,'s');
R=input('Enter the armature resistance value:'); //lenter 4.38
L=input('Enter the armature inductance value:'); //enter 2.15*10^-3
J=input('Enter the moment of inertia of motor and load:'); //lenter 2.2*10^-4
B=input('Enter the frictional coefficient of motor and load:'); //enter 0.4
kt=input('Enter the torque constant value:'); //lenter 1.94
kb=input('Enter the back emf constant value:'); //lenter 1.43
eml=kt/(((R+S*L)*(J*S^2+B*S))+kb*kt*S)
t=0:0.05:25;
subplot(2,3,5)
plot2d(t,csim('step',t,eml))
subplot(2,3,6)
plot2d(t,csim('impulse',t,eml))
