     

for i = 1:laps
    Rload = toleranz_data.load.values(i);
    L = toleranz_data.inductor.values(i);
    T = 1/toleranz_data.frequency.values(i);
    fprintf('Start simulation run %i of %i laps ',i,laps);
    sim('Buck_Converter');
    I = simlog.real_Buck.Load.i.series.values;
    U = simlog.real_Buck.Load.v.series.values;
    toleranz_data.I_out(i) = mean(I(uint64(end*0.5):end) );
    toleranz_data.U_out(i) = mean(U(uint64(end*0.5):end) );

end
Rload = R_saved;
L = L_saved;
T = T_saved;