clc; 
clear;
a = [-5 1 0; 0 -2 1; 0 0 1]
b = [6;0;1]
c = [1 0 0]
d = 0
sys1 = syslin("c",a,b,c,d)
m = cont_mat(sys1)
disp(m)
if rank(m) == 3 then
    disp("system is controllable")
else
    disp("system is uncontrollable")
end

n = obsv_mat(sys1)
disp(n)
if rank(n) == 3 then
    disp("system is observalble")
else
    disp("system is unobservable")
end
