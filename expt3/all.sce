clc;
clear;
//first order mechanical system

s = poly(0,"s")
m = input("enter the mass value: ")
b = input("enter the frictional coeff: ")
t1 = 1 / (m*s + b)
t = 0:0.05:500
subplot(1,4,1)
plot2d(t, csim("step", t, t1))
title("first order mechanical")
xlabel("time")
ylabel("amplitude")

//second order mechanical system
s = poly(0, "s")
m = input("enter the mass value: ")
b = input("enter the frictional coeff: ")
k = input("enter the value of spring coeff: ")
t2 = 1 / ((m*s*s) + (b*s) + k)
t = 0:0.05:500
subplot(1,4,2)
plot2d(t, csim("step", t, t2))
title("second order mechanical")
xlabel("time")
ylabel("amplitude")

//first order electrical system
s = poly(0,"s")
r = input("enter the resistance: ")
c = input("enter the capacitance value: ")
t3 = 1 / (1 + (r*c*s))
t = 0:0.05:500
subplot(1,4,3)
plot2d(t, csim("step", t, t3))
title("first order elctrical")
xlabel("time")
ylabel("amplitude")

//effect of damping coeff
s = poly(0,"s")
w = input("enter the natual frequency: ")
t = 0:0.05:100
subplot(1,4,4)
for i=1:5
    e = input("enter the value of damping coeff: ")
    t4 = (w*w) / ((s*s) + (2*e*w*s) + (w*w))
    plot2d(t, csim("step", t, t4))
end
title("damping coeff effect")
xlabel("time")
ylabel("amplitude")
