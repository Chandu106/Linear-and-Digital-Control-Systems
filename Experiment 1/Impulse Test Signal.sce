L=input("Enter the Length:")
A=input("Enter the Amplitude:")
t1=-L:L;
x1=[zeros(1,L),A*ones(1,1),zeros(1,L)];
subplot(2,4,1);
plot(t1,x1);
title("Impulse Signal")
xlabel("Time")
ylabel("Amplitude")
