% A. Engler, Vorlesung FHV, 30.04.2016
% Skript: erzeugt Zeit- und Spannungssystem
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Konstanten
TEND=0.4			% [s] Berechnungsdauer
SAMPLES=2000	% [1]	Anzahl der St�tzstellen
F=50				% [1/s] Netzfrequenz
U1P=326			% [V] Spitzenspannung
U2P=326			% [V] Spitzenspannung
U3P=326			% [V] Spitzenspannung
OMEGA=2*pi*F	% [1/s] Kreisfrequenz Netz
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

t=linspace(0,TEND,SAMPLES);		% Zeitbasis

% Spannungsquelle 1
u1=U1P*sin(OMEGA*t);
u2=U2P*sin(OMEGA*t+(2*pi/3));
u3=U3P*sin(OMEGA*t+(4*pi/3));
h1=figure;
plot(t,u1,t,u2,t,u3),title('Spannungsquelle_1: U1-3')

% Spannungsquelle 2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
K1=1.05										% �nderung Spannung
K2=1.05										% �nderung Spannung
K3=1.05										% �nderung Spannung
PHI1=0.2										% �nderung Winkel
PHI2=0.2										% �nderung Winkel
PHI3=0.2										% �nderung Winkel
u4=K1*U1P*sin(OMEGA*t+PHI1);
u5=K2*U2P*sin(OMEGA*t+(2*pi/3)+PHI2);
u6=K3*U3P*sin(OMEGA*t+(4*pi/3)+PHI3);
h2=figure;
plot(t,u1,t,u2,t,u3),title('Spannungsquelle_2: U4-6')

% Spannungsabfall �ber Leitungsimpedanz
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
delta_u1= u1 - u4;
delta_u2= u2 - u5;
delta_u3= u3 - u6;
h3=figure;
plot(t,delta_u1,t,delta_u2,t,delta_u3),title('Spannungsabfall Leitungsimpedanz')


%%%%%%%%%%%%%%%% EOF
stromber
alpha_beta
leistung