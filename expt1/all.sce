clc;
clear;
l = input("enter the lenght : ")
a = input("enter the amplitude: ")
f = input("enter frequency : ")
t1 = -l:l
x1 = [zeros(1,l), a*ones(1,1), zeros(1,l)]
subplot(2,4,1)
plot2d3(t1,x1)
title("impulse signal")
xlabel("time")
ylabel("amplitude")

t2 = 0:0.001:l
x2 = zeros(size(t2))
x2(t2>=0)=1
subplot(2,4,2)
plot2d(t2,x2)
title("step signal")
xlabel("time")
ylabel("amplitude")

t3 = 0:0.001:l
x3 = a*t3
subplot(2,4,3)
plot2d(t3,x3)
title("ramp signal")
xlabel("time")
ylabel("amplitude")

t4 = 0:0.001:l
x4 = a*(t4.^2)
subplot(2,4,4)
plot2d(t4,x4)
title("parabolic signal")
xlabel("time")
ylabel("amplitude")

t5 = 0:0.001:l
x5 = a*exp(t5)
subplot(2,4,5)
plot2d(t5,x5)
title("raising exponential")
xlabel("time")
ylabel("amplitude")

t6 = 0:0.001:l
x6 = a*exp(-t6)
subplot(2,4,6)
plot2d(t6,x6)
title("decaying exponential")
xlabel("time")
ylabel("amplitude")

t7 = 0:0.001:l
x7 = sin(2*%pi*f*t7)
subplot(2,4,7)
plot2d(t7,x7)
title("siusoidal")
xlabel("time")
ylabel("amplitude")

t8 = 0:0.001:l
x8 = cos(2*%pi*f*t8)
subplot(2,4,8)
plot2d(t8,x8)
title("cosine")
xlabel("time")
ylabel("amplitude")
