clc;
clear;

s = poly(0, "s")
g = 5/((1+s)*(1+0.5*s)*(1+0.1*s))
g = syslin("c", g)
g = g/.1
scf
bode(g)

kp = input("enter the value of kp: ")
kd = input("enter the value of kd: ")
ki = input("enter the value of ki: ")

gc = (kp) + (kd*s) + (ki/s)
disp(gc)

sys = gc*g
disp(sys)

sys = sys/.1
scf
bode(sys)

scf
t = 0:0.5:50
plot2d(t, csim("step", t,sys))
