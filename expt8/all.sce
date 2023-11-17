clc;
clear;

s = poly(0,"s")
ess = input("enter the steady state error: ")
kv = 1/ess
k = input("enter the steady state error constant: ")
g = k/((s)*(s+1))
g = syslin("c",g)
bode(g)

e = 5
phm = p_margin(g)
gm = g_margin(g)
disp(phm)

phm_desired = input("enter the desired phase margin: ")
phm_req = phm_desired - phm + e
disp(phm_req)

alpha = (1-sind(phm_req)) / (1+sind(phm_req))
disp(alpha)

mag = -20*log10(1/sqrt(alpha))
disp(mag)

wm = input("enter the frequency corresponding to the mag: ")
T = 1/(wm*sqrt(alpha))
disp(T)

zc = 1/T
pc = 1/(alpha*T)
gc = (s + zc) / (s + pc)
disp(gc)

g0 = ((1/alpha) * (g) * (gc))
disp(g0)
scf
bode(g0)

phm_c = p_margin(g0)
disp(phm_c)

g_cl = g0/.1
t = 0:0.5:100
plot2d(t, csim("step", t, g_cl))
