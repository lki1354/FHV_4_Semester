%Berechnunge zur des Kondensators
%close all;
%clear all;

tau = 1.5; %sec
U = 100; %V
U_tau = U * 0.63; %V
I = 10E-3; %A
R1 = U/ I; % Ohm

C1 = tau / R1 ;

