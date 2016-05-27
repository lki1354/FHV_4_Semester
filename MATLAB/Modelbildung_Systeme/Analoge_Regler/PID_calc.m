
parameters
close all;

%% calc pole and zero points (Pol- und Nullstellen)
wz1 = 1/(RI*CD);
wz2 = 1/(RI*RD*CI*CD);
wn = 1/(CI*RI);

p1 = 0;
z1 = - wz2/(2*wz1) + sqrt( (wz2/(2*wz1) )^2 - wz2 );
z2 = - wz2/(2*wz1) - sqrt( (wz2/(2*wz1) )^2 - wz2 );

%% system PN-Plot
s = tf('s');
H = (1+s/wz1+s^2/wz2) / (s/wn);
z = zero(H);
p = pole(H);
zplane(z,p);
grid;

%% berechne Parameter Regler

AP = (RI*CD+CI*RD) / (CI*RI);
TD = RD*CD;
TI = 1/(CI*RI);
%es ist nicht möglich die Parameter unabhängig von einander einzustellen