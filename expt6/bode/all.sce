clc;
clear;
k = input("enter the gain k: ")
s = poly(0,"s")
g = k / ((s)*(1+(2*s)))
g = syslin("c",g)
scf
bode(g)

phm = p_margin(g)
gm = g_margin(g)

disp(phm)

phm_desired = input("enter the desired phase: ")
e = 5
phm_new = phm_desired + e 
phm_req = phm_new - 180
disp(phm_new, phm_req)

wgcn = input("enter the new gain cross over freq: ")

frq_new = wgcn / (2*%pi)
rep_new = repfreq(g,frq_new)
A = dbphi(rep_new)
disp(A)

beta = 10^(A/20)
disp(beta)

T = 10/wgcn
disp(T)

zc = 1/T
pc = 1/(beta*T)
gc = (s+zc)/(s+pc)

g0 = (1/beta) * (gc) * (g)
disp(g0)
scf
bode(g0)

phm_c = p_margin(g0)
gm_c = g_margin(g0)
disp(phm_c)

g0_c = g0/.1
t = 0:0.5:10
scf
plot2d(t, csim("step",t, g0_c))
