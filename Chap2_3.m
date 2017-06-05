%réponse Chapitre 2, Section 3
%manipulation des indices

%QI
%création d'un vecteur
vec = rand(1,12) ;% ou  vec = [ 2 6 4 2 9 6 -1 3 5 65 pi 21]; etc

%extraire les valeurs sur les emplacements (indices) impaires
valsimp = vec(1:2:end);


%Q2
A = rand(3,4) ;%créer la matrice et le vecteur
v = [ 2 6 3 1];

newMat = [A(1,:); v; A(2:end,:)]; %inserer la ligne


%Q3
Data = rand(6,13); %créer la matrice
oddCols = Data(:, 2:2:end);% extraire les colonnes paires



