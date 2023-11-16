clc;
clear;
a = input("enter the system matrix A: ")
b = input("enter the input matrix B: ")
c = input("enter the output matrix C: ")
d = input("enter the feed forward matrix D: ")
sys = syslin("c",a,b,c,d)
sys = ss2tf(sys)
disp(sys)
eig_val = spec(a)
disp(eig_val)
t = 0:0.5:100
scf
plot2d(t, csim("step", t, sys))

a1 = input("enter the matrix a: ")
b1 = input("enter the matrix b: ")
c1 = input("enter the matrix c: ")
d1 = input("enter the matrix d: ")
sys1 = syslin("c",a1,b1,c1,d1)
sys1 = ss2tf(sys1)
disp(sys1)
eig_values1 = spec(a1)
disp(eig_values1)
t1 = 0:0.5:100
scf
plot2d(t1, csim("step",t,sys1))

s = poly(0,"s")
sys2 = 1 / (s*s + 3*s + 2)
sys2 = syslin("c",sys2)
disp(sys2)
sys2 = tf2ss(sys2)
disp(sys2)
scf
t2 = 0:0.5:100
plot2d(t2, csim("step",t2, sys2))

s = poly(0,"s")
sys3 = (5*s + 2) / ((s*s*s*s) + (2*s*s*s) + (s*s) + (5*s) + 10)
sys3 = syslin("c",sys3)
disp(sys3)
sys3 = tf2ss(sys3)
disp(sys3)
scf
t3 = 0:0.5:100
plot2d(t3, csim("step",t3,sys3))
