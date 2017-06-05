function [MoymaxC1, MoymaxC4]= AnalyseSimpleF(AllData)
%les donn�es � analyser sont fournies � l'appel


%separation des donn�es en matrice de donn�es et liste de conditions
conditions = AllData(1,:);
DataOnly = AllData(2:end,:);

%analyse des essais
moy = mean(DataOnly);
maxval = max(DataOnly);

%analyse par condition
c1 = find(conditions == 1)
MoyC1 = mean(moy(c1)); % mean(mean(DataOnly(:,c1)))
MoymaxC1 = mean(maxval(c1));

c4 = find(conditions == 4)
MoyC4 = mean(moy(c4)); % mean(mean(DataOnly(:,c1)))
MoymaxC4 = mean(maxval(c4));


ensemble = [MoymaxC1 MoymaxC4] %les autres � ajouter!
figure
bar(ensemble)

