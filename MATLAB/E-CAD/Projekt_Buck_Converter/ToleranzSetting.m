
% name = 'load';
% toleranz=0.1;
% laps=10; 

if not(ischar(name))
    error(message('no name for toleranz defined'));
end

toleranz_data.I_out = zeros(laps,1);
toleranz_data.U_out = zeros(laps,1);

%init load toleranz setting


switch name
    case 'init'
        toleranz_data.load.values = ones(laps,1)*Rload;
        R_saved = Rload;
        toleranz_data.inductor.values = ones(laps,1)*L;
        L_saved = L;
        toleranz_data.frequency.values = ones(laps,1)*T;
        T_saved = T;
    case 'load'
        toleranz_data.load.values = normrnd(Rload,Rload*toleranz/3,1,laps);
        toleranz_data.load.percent = toleranz_data.load.values / Rload;

    case 'inductor'  
        toleranz_data.inductor.values = normrnd(L,L*toleranz/3,1,laps);
        toleranz_data.inductor.percent = toleranz_data.inductor.values / L;

    case 'frequency'
        toleranz_data.frequency.values = normrnd(f,f*toleranz/3,1,laps);
        toleranz_data.frequency.percent = toleranz_data.frequency.values / f;
        
    otherwise
        error(message('stats:ToleranzAnalyse:Switch'));
end



