function [DataF, maxindex,minindex] = FiltMaxmin(DataB)

%filtrage
[b, a ] = butter(2, 0.1); %ordre de 2 et Fc = 0.1*frequence de Shannon
DataF = filtfilt(b, a, DataB);


%calcul d'une derivee approchee
Y=diff(DataF);
%recuperation du signe de la derivee
%dans Y2 une valeur +1 correspond a une pente croissante
%						  -1 correspond a une pente decroissante
Y2=sign(Y);
%recuperation des indices des minima
%un minimum est caracterise par une pente de signe -1 avant puis +1 apres
%si on fait la difference du vecteur de signe Y2, un minimum est 
%donc caracterise par +2
minindex=find(diff(Y2)==2)+1;
%recuperation des indices des maxima
%un maximum est caracterise par une pente de signe +1 avant puis -1 apres
%si on fait la difference du vecteur de signe Y2, un minimum est 
%donc caracterise par -2
maxindex=find(diff(Y2)==-2)+1;






