%A. Engler, Vorlesung FHV, 30.04.2016
%Definition Leistungsimpedanz und Stromberechnung
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Leitungsimpedanz R / L
ZL1R=0.03		% [Ohm] R_Leitung_1
ZL2R=0.03			% [Ohm] R_Leitung_2
ZL3R=0.03		% [Ohm] R_Leitung_3
ZL1L=0.001	% [H] L_Leitung_1
ZL2L=0.001	% [H] L_Leitung_2
ZL3L=0.001	% [H] L_Leitung_3

dt=TEND/SAMPLES	% Integrationsintervall
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Berechnung Strom Leitung 1
iL1(1)=0		% Initialisation
for n=2 : SAMPLES
   iL1(n)=iL1(n-1)+(delta_u1(n)-ZL1R*iL1(n-1))/ZL1L*dt;	% int(delta_u - uR)*dt/L
end
% Berechnung Strom Leitung 2
iL2(1)=0		% Initialisation
for n=2 : SAMPLES
   iL2(n)=iL2(n-1)+(delta_u2(n)-ZL2R*iL2(n-1))/ZL2L*dt;	% int(delta_u - uR)*dt/L
end
% Berechnung Strom Leitung 3
iL3(1)=0		% Initialisation
for n=2 : SAMPLES
   iL3(n)=iL3(n-1)+(delta_u3(n)-ZL3R*iL3(n-1))/ZL3L*dt;	% int(delta_u - uR)*dt/L
end
h4 = figure;
plot(t,iL1,t,iL2,t,iL3),title('Leitungsströme: iL 1-3')

%%%%% EOF