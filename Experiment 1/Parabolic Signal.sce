L = input("Enter the length: ")
A = input("ENter the Amplitude: ")
t4=0:0.001:L;
x4=A*(t4.^2);
subplot(2,4,4)
plot(t4,x4);
title("Parabolic Signal")
xlabel("Time")
ylabel("Amplitude")
