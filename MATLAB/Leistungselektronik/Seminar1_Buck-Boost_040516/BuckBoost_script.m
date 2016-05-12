%Berechnunge der Bauteile
close all
clear
clc

%Switch
duty_cycle = 0.5; 
Twidth = 20E-6; %sec
Ton = Twidth * duty_cycle;
Toff = Twidth -Ton;
Upulse= 12;
Ut = 6;
Uh = 0;
Ron_s = 1E-6;
Roff_s = 1E+9;

%Input
Uin = 12; %V

%Converter
L1 = 330E-6;
C1 = 82E-6;
UF = 0.7;
Diode_C = 4E-9; %F
Ron_d = 0;
Roff_d = 1E+9;
%Load
Rload = 10; %Ohm

Uout = -duty_cycle/(1-duty_cycle) * Uin;
Uout


D = linspace(0,0.8,1000);
Vout = -D./(1-D)*Uin;
%plot(D,Vout)
%grid on


model_real = 'BuckBoost_real';
sim(model_real);
open_system(strcat(model_real,'/Scope_real') )
average_Diode_power = mean(Power_diode);
average_Diode_power
print('-sBuckBoost_real','-djpeg','Buckboost_converter_Simulation_real.jpg')

i_diode = -simlog.Diode.d1.i.series.values-simlog.Diode.c1.i.series.values
u_diode = simlog.Diode.p.v.series.values - simlog.Diode.n.v.series.values
power = u_diode.*i_diode
mean(power)
%model_real = 'BuckBoost_ideal';
%sim('')
%open_system(strcat(model_real,'/Scope_ideal') )
%print('-sBuckBoost_ideal','-djpeg','Buckboost_converter_Simulation_ideal.jpg')

%D = linspace(0,1,100);
%Ir = Uin* D * Twidth /(2 * L1);
%Ur = Uout* D * Twidth /(2 * R * C1);
