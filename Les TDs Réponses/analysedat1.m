clear 
%close all

filename = 'Sujet1.txt';

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
    
    meanVal = mean(dataf(1:freqech/2)); %première demi seconde
    ectype = std(dataf(1:freqech/2));
    
    depasse = find(dataf > (meanVal + 2*ectype) | dataf < (meanVal - 2*ectype));
    mvtStart = depasse(1);
    
    plot(time(mvtStart),dataf(mvtStart),'r*');
    
    %déterminer lalatence de point min après deb mouvement
    [valmin, indexmin] = min(dataf(mvtStart:end));
    Latence = indexmin/freqech;
    
    plot(time(indexmin+ mvtStart -1), valmin, 'go')
    title ([filename ' Latence = ' num2str(Latence)])
    
    
    end
    




%filtrage



