%

clear;
close all;
clc;

R = 100E+6;
C = 1E-6;

RD  = 1E+9;
CD = 10E-9;
Kp = 2*10^-12;%As/N

v0 = 100E+3;
w0 = 10;

AD = tf(v0,[1/w0 1]) %Op-Amp 
kR = tf([C , 1/RD],[CD+C, 1/RD+1/R ]) %Rückkopplung
kF = tf([CD+C , 1/R+1/RD,0],[CD*C , CD/R+C/RD , 1/(RD*R)]) %Führungsgröße

A = -(kF*AD)/(1+kR*AD)

bode(AD,kR,kF,A);
grid on;
legend('AD;Op-Amp','kR; Rückkopplung','kF; Führungsgröße','A; Gesamtsystem');
