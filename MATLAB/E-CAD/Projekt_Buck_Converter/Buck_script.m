%Skript
clear;
close all;
clc

%load all parameters for Buck converter 
parameters

%start simulink Model of Buck converter
Buck_Converter

close all;
name = 'init';
toleranz=0.1;
laps=10; 
ToleranzSetting
%analyse Load Resistor Toleranz
name = 'load';
ToleranzSetting

name = 'inductor';
ToleranzSetting

name = 'frequency';
ToleranzSetting

ToleranzSimulation

figure(1)
subplot(2,3,1)
scatter(toleranz_data.load.percent,toleranz_data.I_out)
title('Load Resistor Toleranz 10%')
xlabel('Toleranz ')
ylabel('Iout [A]')
grid on
subplot(2,3,4)
scatter(toleranz_data.load.percent,toleranz_data.U_out)
title('Load Resistor Toleranz 10%')
xlabel('Toleranz ')
ylabel('Uout [V]')
grid on

%analyse inductor Toleranz
subplot(2,3,2)
scatter(toleranz_data.inductor.percent,toleranz_data.I_out)
title('inductor Toleranz 10%')
xlabel('Toleranz ')
ylabel('Iout [A]')
grid on
subplot(2,3,5)
scatter(toleranz_data.inductor.percent,toleranz_data.U_out)
title('inductor Toleranz 10%')
xlabel('Toleranz ')
ylabel('Uout [V]')
grid on

%analyse frequency Toleranz
subplot(2,3,3)
scatter(toleranz_data.frequency.percent,toleranz_data.I_out)
title('frequency Toleranz 10%')
xlabel('Toleranz ')
ylabel('Iout [A]')
grid on
subplot(2,3,6)
scatter(toleranz_data.frequency.percent,toleranz_data.U_out)
title('frequency Toleranz 10%')
xlabel('Toleranz ')
ylabel('Uout [V]')
grid on

