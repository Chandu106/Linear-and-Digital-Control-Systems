L = input("Enter the length: ")
A = input("ENter the Amplitude: ")
f1=input("Enter the Frequency:");
t7=0:0.01:L;
x7=A*sin(2*%pi*f1*t7);
subplot(2,4,7)
plot(t7,x7);
title("Sinusoidal Signal")
xlabel("Time")
ylabel("Amplitude")
