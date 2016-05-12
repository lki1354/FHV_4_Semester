% A. Engler, Vorlesung FHV, 30.04.2016
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Leistungsberechnung
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

for n=1 : SAMPLES
   P(n) = 0.5*(u_alpha(n)*i_alpha(n)+u_beta(n)*i_beta(n));
   Q(n) = 0.5*(u_beta(n)*i_alpha(n)-u_alpha(n)*i_beta(n));
end

h7 = figure;
plot(t,P,t,Q),title('Spannungsquelle 1: Wirk- und Blindleistung')
legend({'Wirkleistung','Blindleistung'},'Location','northoutside','Orientation','horizontal','FontSize',100,'FontWeight','bold');

%%%% EOF