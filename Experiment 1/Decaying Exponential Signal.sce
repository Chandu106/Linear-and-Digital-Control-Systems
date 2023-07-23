L = input("Enter the length: ")
A = input("ENter the Amplitude: ")
t6=0:0.01:L;
x6=A*exp(-t6);
subplot(2,4,6)
plot(t6,x6);
title("Decaying Exponential Signal")
xlabel("Time")
ylabel("Amplitude")
