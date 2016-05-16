%

clear;
close all;
clc;

R = 1E+2;
C = 1E-6;
%C = 0;

%Diode von Vishay VBPW34
RD  = 5E+9;
CD = 70E-9;
%SD = 0.1E-3; %
SD = 1;A/lux Beleuchtungsstärke

v0 = 100E+3;
w0 = 10;

AD = tf(v0,[1/w0 1]) %Op-Amp 
kR = tf([C , 1/RD],[CD+C, 1/RD+1/R ]) %Rückkopplung
kF = SD*tf([CD+C , 1/R+1/RD],[CD*C , CD/R+C/RD , 1/(RD*R)]) %Führungsgröße

A = -(kF*AD)/(1+kR*AD)

bode(AD,kR,kF,A);
grid on;
legend('AD;Op-Amp','kR; Rückkopplung','kF; Führungsgröße','A; Gesamtsystem');
