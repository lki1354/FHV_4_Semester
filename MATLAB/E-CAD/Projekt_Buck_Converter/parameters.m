%% setting parameter
controller_on = true;

%% given parameter
Uin = 200;
Rload = 10E+3;
f = 80E+3;
D = 0.4;
ILmax = 50E-3; 
current_sense = 0.02; %[A] current throw inductor to switch off


%% self defined parameters
Uswitch = 5;
dUout = 1;%[V] , ripple voltage at output 

%% parasitic element parameters
%

%Diode
U_Diode = 0.7; % [V] Forward Voltage
R_on_Diode = 0.1; % [Ohm] On resistance
G_off_Diode = 1E-9;%[S]Off conductance
C_Diode = 0;%[F] Junction capacitance, 5E-9F

%Capacitor
R_serie_C = 10E-3; % [Ohm] Series resistance:
G_II_C = 0; % [S] Parallel conductance:

%Inductor
R_serie_L = 0.5; %[V] Series resistance:
G_II_L = 0; %[S] Parallel conductance:

% FET (IPB17N25S3) 
% C_iss = 1133E-9; %[F] Input capacitance, 1133pF, max 1500pF
% C_rss = 11E-9; %[F] Reverse transfer capacitance, 11 pF , max 23pF 
% C_oss = 380E-9; %[F] Output capacitance, 480pF, max 625pF
%without capacitance
C_iss = 0; %[F] Input capacitance, 1133pF, max 1500pF
C_rss = 0; %[F] Reverse transfer capacitance, 11 pF , max 23pF 
C_oss = 0; %[F] Output capacitance, 480pF, max 625pF
R_DS_on = 0.1; %[Ohm] Drain-source on resistance
Ids = 17; %[A] Drain current, Ids, for R_DS(on)
Vgs = 20; %[V] Gate-source voltage, Vgs, for R_DS(on):
Vth = 3; % [V] Gate-source threshold voltage
R_D_FET = 0.001;% [Ohm] Drain ohmic resistance:
R_S_FET = 1e-4;% [Ohm] Source ohmic resistance:



%% calculation parameters
%

T = 1/f;    % switching period
Ton = T*D;  % induction load time
Tdelay = T;
Uout = D*Uin;   %output voltage
Iin_m = D*ILmax/2;



L = (Uin-Uout)/(2*ILmax)*D*T;   %calculation of induction
%L = Uin*D*(1-D)*T/(2*Iin_m);
%L = 1/ILmax*(Uin-Uout)*Ton; %0.0625
C = T^2/(8*L)*Uout/dUout*(1-D); % [F] 
%C = 10E-6; 
%defined in workshit but changed because of the long simulation time

