clear 
%close all

filename = 'Sujet1.txt';
%filename2 = 'Sujet2.txt';
%filename3 = 'Sujet3.txt';

freqech = 100; %acquisition frequency

id = fopen(filename,'r'); %open file

if id %if allowed to access file ....
    
    data = fscanf(id, '%f', [1,inf])';%...read data
    fclose(id);
    
    %affichage
    time = (0:length(data)-1)'/freqech;
    
    figure
    plot(time, data(:,1))
    
    %filtrage
    [b, a] = butter(2, 10/(freqech/2));
    dataf = filtfilt(b,a,data);
    
    hold on
    plot(time, dataf, 'r');
    
    %analyse
    %analyse premier état stable
    moy = mean(dataf(1:50));
    ectype = std(dataf(1:50));
    disp(['avg,first half second :' num2str(moy,5)  ' mm']);

    hold on
    plot(time, moy, 'g');
    
    disp(['std,first half second :' num2str(ectype,5)]);
    disp(['maximal distance :' num2str(max(dataf)-moy,5)]);
    
    hold on
    plot(time, max(dataf), 'g');
    
    disp(['minimal distance :' num2str(moy-min(dataf),5)]);  
    
    hold on
    plot(time, min(data), 'g');
    
end




%filtrage



