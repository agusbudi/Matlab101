function [maxALL, minALL, maxAMP] = analyseManip(filename)
%fonction qui lit un fichiers texte de 8 colonnes et qui effectue 
%une traitement par condition

%lecture du fichier texte
id = fopen(filename,'r') ;
for i = 1 : 8                           % boucle pour la lecture des 8 chaines de caractères
    entete(i,1:5) = fscanf(id,'%s',1);  % lecture des entetes des colonnes
end                                     %entete est une matrice de 8 lignes et 5 colonnes

data = fscanf(id,'%f',[8,inf])'; %lecture des données en gardant l'organisation en colonne

fclose(id);
%affichage
figure
plot(data)
title(['all 8 trials :' filename])

%analyse des max et min
maxALL = max(data);     %la valeur max pour chaque colonne (vecteur de 8 valeurs)
minALL = min(data);

maxAMP = maxALL - minALL; %la différence par colonne entre le max et le min (vecteur de 8 valeurs)

