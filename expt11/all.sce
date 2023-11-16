clc;
clear;
a = [0 1 0;0 0 1;0 -2 -3]
b = [0;0;10]
c = [1 0 0]
d = 0

p = [-2 -1+1*%i -1-1*%i]

k = ppol(a,b,p) //state feedback gain matrix
disp(k)

sys = syslin("c",a-b*k,b,c,d)
disp(sys) //closed loop system

t = 0:0.5:10
plot2d(t, csim("step",t,sys)) //response of the closed loop system
