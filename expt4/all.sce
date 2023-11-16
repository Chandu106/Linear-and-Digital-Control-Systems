clc;
clear;
s = poly(0, "s")
sys1 = 1 / ((s*s*s) + (4*s*s) + (13*s))
sys1 = syslin("c", sys1)
disp(sys1)
evans(sys1) //root lccus of the system

z = input("enter the zeta value: ")
w = input("enter the natural freq value: ")
sgrid(z,w)

title("root locus of the system")
scf;
t=0:1:150
plot2d(t, csim("step", t, sys1)) //open loop system step response 
title("open loop step response")

k = kpure(sys1) //to compute the k value for sys1
disp(k)
sys2 = sys1/.k
disp(sys2)

scf;
plot2d(t, csim("step", t, sys2))
title("closed loop step response")

