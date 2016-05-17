%

clear;
%close all;
clc;

R = 1E+3;
C = 1E-9;
%C = 0;

%Diode von Vishay VBPW34
%RD  = 5E+9;
%CD = 70E-9;
%SD = 0.1E-3; %
SD = 1;%A/lux Beleuchtungsstärke

%von Angabe Bsp.
RD  = 1E+9;
CD = 10E-9;

v0 = 100E+3;
w0 = 10;

AD = tf(v0,[1/w0 1]) %Op-Amp 
kR = tf([RD*CD , 1],[ CD*(R+RD), 1+CD/C]) %Rückkopplung
kF = SD*tf(1 , [C+CD , 1/R+1/RD]) %Führungsgröße

A = -(kF*AD)/(1+kR*AD)

bode(AD,kR,kF,A);
grid on;
legend('AD;Op-Amp','kR; Rückkopplung','kF; Führungsgröße','A; Gesamtsystem');
