clc;
clear;
clf;
k = 1
s = poly(0, "s")
g = k / ((s)*(s+2)*(s+8))
g = syslin("c",g)
evans(g)

m = input("enter the percentage overshoot: ")
zeta = sqrt((log(m)^2)/((%pi^2)+(log(m)^2)))
disp(zeta)
sgrid(zeta,0)

k = input("enter the gain value: ")
disp(k)

kvu = input("enter velocity error constant of uncompensated system: ")
ess = input("enter steady state error: ")
kvd = 1 / ess
a = kvd / kvu 
beta = 1.2*a

p = input("enter the second pole of the system: ")
disp(p)

T = -1 / (0.1*p)
zc = 1/T
pc = 1/(beta*T)
gc = (s+zc) / (s+pc)
disp(gc)
sys = gc * g * k
disp(sys)
scf
evans(sys)

sys1 = sys/.1
scf
t = 0:0.1:100
plot2d(t, csim("step", t,sys1))
