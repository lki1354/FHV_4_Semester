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
laps=1000; 
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


% random
% %Toleranz von der Induktivität
% toleranz = 0.1;
% Anzahl = 100;
% L_saved = L;
% L_t= normrnd(L,L*toleranz,1,Anzahl);
% I_out_L_t = zeros(Anzahl,1);
% U_out_L_t = zeros(Anzahl,1);
% for i = 1:Anzahl
%   L = L_t(i);
%   sim('Vorgabe_Abwaertswanderl_Buck_converter');
%   I = simlog.Resistor.i.series.values;
%   U = simlog.Resistor.v.series.values;
%   I_out_L_t(i) = mean(I(end-1000:end) );
%   U_out_L_t(i) = mean(U(end-1000:end) );
% end
% L = L_saved;
% toleranz_pr = L_t. / L;


%Ia = Ua*T/(2*L)*(1-p);

%sim('Abwaertswanderl_Buck_converter');
%T_fluss^2+T_fluss*Ton-2*L*T=0
%a = Ton;
%b = -2*L*T;
%T_fluss = a/2+sqrt(a^2-b^2);

%Ua = L*ILmax/T_Fluss;
%Ia = Ua/Rload;

%UL = Uein - Ua;

%Ie_m = p*ILmax/2;
%IR = Ie_m;
%Ua = Rload*Ie_m;

%UL = (Uin-Ua);
%L=UL*Ton/ILmax;
%L = Uin*p/(f*ILmax);
%L = 6E-3;
%dUa = 0.5; %[V], Rippelspannung
%C = T^2/(8*L)*Ua/dUa*(1-p);


%Iamin = Ua/Rload;
%L = Ua/(2*ILmax)*T*(1-p); %