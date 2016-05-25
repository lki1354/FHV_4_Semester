%Skript
clear;
close all;
clc

%load all parameters for Buck converter 
parameters

%start simulink Model of Buck converter
Buck_Converter

name = 'init';
toleranz=0.1;
laps=100; 
ToleranzSetting

name = 'frequency';
ToleranzSetting

ToleranzSimulation

%analyse frequency Toleranz
figure(2)
subplot(1,2,1)
scatter(toleranz_data.frequency.percent,toleranz_data.I_out)
title('frequency Toleranz 10%')
xlabel('Toleranz ')
ylabel('Iout [A]')
grid on
subplot(1,2,2)
scatter(toleranz_data.frequency.percent,toleranz_data.U_out)
title('frequency Toleranz 10%')
xlabel('Toleranz ')
ylabel('Uout [V]')
grid on