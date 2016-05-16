%Systembeschreibung eser Piezo Drucksensores

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
kR = tf([RD*CD , 1],[ CD*(R+RD), 1+CD/C]) %Rückkopplung
kF = tf([1 , 0] , [C+CD , 1/R+1/RD]) %Führungsgröße

A = -(kF*AD)/(1+kR*AD)

bode(AD,kR,kF,A);
grid on;
legend('AD;Op-Amp','kR; Rückkopplung','kF; Führungsgröße','A; Gesamtsystem');
