%script pour gerer une analyse en batch
clear 
close all;


% on cree une liste des fichiers a traiter
File = dir('nuage*.txt'); % on determine la liste des fichiers a traiter

num_fichiers = size(File,1);

for count = 1: num_fichiers
   id_fich_in = fopen(File(count).name,'r');
   File(count).Data = fscanf(id_fich_in, '%f',[2,inf])';
   fclose(id_fich_in);
   
   % ici on appelle les fonctions d'analyse .....
   File(count).Norm_data = normalisation(File(count).Data);
   
   File(count).Moy_donnees = mean(File(count).Data);
   File(count).Ecart_T = std(File(count).Data);
   
   %..... etc etc
   
   % creation du nom du fichier de sortie - la meme racine que le fichier
   % d'entree mais avec une extension differente
   nom_sortie = File(count).name(1:(end-3));
   nom_sortie = [nom_sortie, 'out'];
   
   % ouverture et ecriture des donnees
   id_fich_out = fopen(nom_sortie,'w');
   fprintf(id_fich_out,' donnees moyennes\n');
   fprintf (id_fich_out,'%f',File(count).Moy_donnees);
   fprintf(id_fich_out,' \n ecart-types\n');
   fprintf (id_fich_out,'%f',File(count).Ecart_T);
   fprintf(id_fich_out,' \n donnees normalisees\n');
   fprintf (id_fich_out,'%f %f\n',File(count).Norm_data');
   fclose(id_fich_out);
   
   %affichage
   
   figure
   plot(File(count).Norm_data)
   title(['Normalised data ' File(count).name(1:(end-4)),' averages = ',num2str(File(count).Moy_donnees)])
   figure
   plot(File(count).Data)
   title(['Raw data ' File(count).name(1:(end-4)),' averages = ',num2str(File(count).Moy_donnees)])
   
   
end

% analyse inter sujet
% ex. on calcule la moyenne pour tous les fichier pour col 1 et 2
av_data = [File.Moy_donnees];
av_col1 = mean(av_data(1:2:end))
av_col2 = mean(av_data(2:2:end))


% ....et si on avait la boite a outils 'Statistics, on serait pret
% a ecrire l'article !!




   
   
   
   

