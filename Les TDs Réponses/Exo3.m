%QU 3 Les Tds

%1. 	Si A = rand(6,3), comment peut-on trouver la valeur moyenne de toute la matrice A ?

A = rand(6,3);
%Méthode 1
mnAll = mean(mean(A));
%Méthode 2
mnAll = mean(A(:));

%2. 	Comment déterminer les max des lignes ?
%Méthode 1
mxL = max(A,[],2);
%Méthode 2
mxL = max(A');

%3.      Comment peut-on trouver l'écart-type de toutes les valeurs dans A. ?
stdAll = std(A(:)) ; %pas de choix de méthode ! Verifiez! comparez avec std(std(A))

%4.     Si  x est le vecteur rand(10,1) calculez la somme des x carrés
x = rand(10,1);
%Méthode 1
sum2 = sum(x.*x);
%Méthode 2
sum2 = x'*x ; %multiplication matricielle 

%5. 	Si A = rand(4) (i.e., matrice carrée), déterminez le nombre d'éléments de A supérieur à 0.5.
A = rand(4);
%Méthode 1
indxBig = find(A > 0.5);
numBig = length(indxBig);
%Méthode 2
BigYesNo = A > 0.5;
numBig = sum(A(:));  % ou bien sum(sum(A));
