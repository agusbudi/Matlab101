
load Data.mat

%separation des données en matrice de données et liste de conditions
conditions = AllData(1,:);
DataOnly = AllData(2:end,:);

%analyse des essais
moy = mean(DataOnly);
maxval = max(DataOnly);

%analyse par condition
c1 = find(conditions == 1);
MoyC1 = mean(moy(c1)); %ou bien ... mean(mean(DataOnly(:,c1)))
MoymaxC1 = mean(maxval(c1));

c4 = find(conditions == 4);
MoyC4 = mean(moy(c4)); % mean(mean(DataOnly(:,c4)))
MoymaxC4 = mean(maxval(c4));

c6 = find(conditions == 6);
MoyC6 = mean(moy(c6)); % mean(mean(DataOnly(:,c6)))
MoymaxC6 = mean(maxval(c6));

c8 = find(conditions == 8);
MoyC8 = mean(moy(c8)); % mean(mean(DataOnly(:,c8)))
MoymaxC8 = mean(maxval(c8));

%Etape supplementaire
%on crée une seul vecteur pour afficher les résultats comme un graphe-bar
ensemble = [MoymaxC1 MoymaxC4 MoymaxC6 MoymaxC8]; 
figure
bar(ensemble)

