% Reponse EXO 13
close all %pour eviter accumuler des fenêtres graphiques

D = load('graphdata.dat') ; %charger les données 

%1. tous sur le même axe et fenêtre

figure
plot(D); 
title(' all data from graphdata file'); %un détail supplémentaire

%2.  diff fenetres
nfenetres = size(D,2) ; %trouver le nombre de fenetres à créer
for f = 1: nfenetres
    figure %création de figure dans une boucle
    plot(D(:,f))
    title( [' graphdata col ' num2str(f)]);
    
    %analyse avec FiltMaxmin etape 7
    [Df, maxId, minId] = FiltMaxmin(D(:,f));
    hold on             %pour pouvoir supperposer
    plot(Df, 'r')
    plot(maxId, Df(maxId), 'k*')% à partir des indice on cherche les valeurs
    plot(minId, Df(minId), 'g*')
    
    
end

%3 trois axes sur 1 fenêtre
figure
for s = 1: nfenetres
    subplot(nfenetres,1,s)
    plot(D(:,s))
    title( [' graphdata col ' num2str(s)]);
end


