%Berechnunge der Bauteile
%close all;
clear all;

f = 100E+3; %Hz
duty_cycle = 0.2; 
Twidth = 1/f; %sec
Ton = Twidth * duty_cycle;
Toff = Twidth -Ton;
Uin = 100; %V
R1 = 0.1; %Ohm
C1 = 100E-6; %F
R2 = 10E+3; %Ohm
Imax = 50; %A
Idelta = 1;
M = 1/(1-duty_cycle); %Eingangsspannungs Multiplikator
Uout = Uin*(1+Ton/Toff);
Iout = Uout/R2;
%L1 = Uin^2/Uout * (1-Uin/Uout) * Twidth/(2*Iout); % s/A * V = V/A * s = Ohm * s = H (Henry)
%C1 = Twidth*Iout;
L1 = duty_cycle*Uin*(1-duty_cycle) / (f*2*Iout);
C1 = Iout/(1*f);

%Uin=10;
%L1=60E-6;
%C1=11.5E-6;
%R2=12;
%Ton = 11.5E-6;
%Twidth = 20E-6;
%set_param('Aufgabe3','MaxConsecutiveZCsMsg','none');