% A. Engler, Vorlesung FHV, 30.04.2016: alpha-beta-Umformung
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% das alpha-beta-System ist eine gute Grundlage für die Leistungsberechnung
% s. Clarke Transformation

% Stromwerte
for n =1 : SAMPLES
   i_alpha(n) = 2/3*(iL1(n)-0.5*iL2(n)-0.5*iL3(n));
   i_beta(n)  = 2/3*(sqrt(3)/2*iL2(n)-sqrt(3)/2*iL3(n));
   i_null(n)  = 2/3*(0.5*iL1(n)+0.5*iL2(n)+0.5*iL3(n));
end
h5 = figure;
plot(t,i_alpha,t,i_beta,t,i_null),title('Leitungsströme: alpha beta')

% Spannungswert
for n =1 : SAMPLES
   u_alpha(n) = 2/3*(u1(n)-0.5*u2(n)-0.5*u3(n));
   u_beta(n)  = 2/3*(sqrt(3)/2*u2(n)-sqrt(3)/2*u3(n));
   u_null(n)  = 2/3*(0.5*u1(n)+0.5*u2(n)+0.5*u3(n));
end
h6 = figure;
plot(t,u_alpha,t,u_beta,t,u_null),title('Spannungsquelle 1: alpha beta')

%%%% EOF