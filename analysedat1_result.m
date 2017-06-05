function filez = analysedat1_result()
clear 
%close all

%1st way
%N = input('number file: ');
%toutLatence=zeros(1, N);

%2nd way
filez= dir('Sujet*.txt');
%filez= dir('../Sujet*.txt'); %another directory
N= length(filez);

freqech = 100; %acquisition frequency



for n=1:N   
%    filename = ['Sujet' num2str(n) '.txt'];
    filename = filez(n).name;

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

    %    plot(time,meanVal,'b');  %my own edition, Agus

    %first way
        depasse = find(dataf > (meanVal + 2*ectype) | dataf < (meanVal - 2*ectype));
        mvtStart = depasse(1);

    %other way : find only the first point  
        i= 1;
        while dataf(i) > (meanVal + 2*ectype) | dataf(i) < (meanVal - 2*ectype)
            i=i+1;
        end
        mvStart2= i;


    %    plot(time,meanVal + 2*ectype,'b');  %my own edition, Agus
    %    plot(time,meanVal - 2*ectype,'b');  %my own edition, Agus


    %    plot(time(depasse),dataf(depasse),'r*');  %my own edition, Agus
        plot(time(mvtStart),dataf(mvtStart),'r*');

        %déterminer lalatence de point min après deb mouvement
        [valmin, indexmin] = min(dataf(mvtStart:end));
        Latence = indexmin/freqech;
 %       toutLatence(n)= Latence;
        filez(n).Latence= Latence;

        plot(time(indexmin+ mvtStart -1), valmin, 'go')
        title ([filename ' Latence = ' num2str(Latence)])

    end
end    


end