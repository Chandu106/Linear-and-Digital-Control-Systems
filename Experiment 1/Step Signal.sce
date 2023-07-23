L=input("Enter the Length:")
A=input("Enter the Amplitude:")
t1=-L:L;
x1=[zeros(1,L),A*ones(1,1),zeros(1,L)];
subplot(2,4,1);
plot(t1,x1);
title("Impulse Signal")
xlabel("Time")
ylabel("Amplitude")



L = input("Enter the length: ")
A = input("Enter the Amplitude: ")
t2=-L:0.001:L;
x2=zeros(size(t2));
x2(t2>=0)=1;
subplot(2,4,2)
plot(t2,x2);
title("Step Signal")
xlabel("Time")
ylabel("Amplitude")
