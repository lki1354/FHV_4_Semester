%Parameter
clear;

Uin = 200;
Uswitch = 220;

Rload = 10E+3;
f = 80E+3;
p = 0.4;
T = 1/f;
Ton = T*p;
Tdelay = 0;
Ua = Uin*p;
ILmin = 50E-3;
Iamin = Ua/Rload;
L = Ua*T/(2*Iamin)*(1-p); %
dUa = 0.5; %[V], Rippelspannung
%C = T^2/(8*L)*Ua/dUa*(1-p);
C = 10E-6;
RC_serie = 1E-2;
RL_serie = 0.5;

%sim('Abwaertswanderl_Buck_converter');