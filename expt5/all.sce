clc;
clear;
s = poly(0, "s")
sys = 1 / ((s*s*s) + (6*s*s) + (5*s))
sys = syslin("c", sys)
disp(sys)

scf
bode(sys)

for k = 0:10:80
    sys = (1*k) / ((s*s*s) + (6*s*s) + (5*s))
    sys = syslin("c", sys)
    phm = p_margin(sys)
    gm = g_margin(sys)
    disp(k)
    disp(sys)
    disp(phm)
    disp(gm)
    
    if(phm>gm)
        scf
        bode(sys)
        title("stable system")
    elseif(abs(phm-gm)<0.01)
        scf
        bode(sys)
        title("marginally stable")
    elseif(phm<gm)
        scf
        bode(sys)
        title("unstable")
        end     
end
