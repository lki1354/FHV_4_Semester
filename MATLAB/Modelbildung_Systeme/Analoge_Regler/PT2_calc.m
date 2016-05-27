parameters

%% calc cutoff frequency (Grenzfrequenz)
w1 = 1/(CS2*(RS2+RS1));
w2 = 1/(RS1*RS2*CS1*CS2);

%% calculate pole (Polstellen)
s1 = -w2/(2*w1) + sqrt( (w2/(2*w1) )^2 - w2 ) ;
s2 = -w2/(2*w1) - sqrt( (w2/(2*w1) )^2 - w2 ) ;

%% calc (Überschwingweite)
Xmax = 1.56;
Xe = 1;
ue = (Xmax - Xe) / Xe;

%% calc (Ausregelzeit, 5%)
dx = Xe*0.05;
xpBand = Xe +dx;
xnBand = Xe-dx;
Taus = 0.07; %secunds