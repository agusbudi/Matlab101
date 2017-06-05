%QU 3 Les Tds

%1. 	Si A = rand(6,3), comment peut-on trouver la valeur moyenne de toute la matrice A ?

A = rand(6,3);
%M�thode 1
mnAll = mean(mean(A));
%M�thode 2
mnAll = mean(A(:));

%2. 	Comment d�terminer les max des lignes ?
%M�thode 1
mxL = max(A,[],2);
%M�thode 2
mxL = max(A');

%3.      Comment peut-on trouver l'�cart-type de toutes les valeurs dans A. ?
stdAll = std(A(:)) ; %pas de choix de m�thode ! Verifiez! comparez avec std(std(A))

%4.     Si  x est le vecteur rand(10,1) calculez la somme des x carr�s
x = rand(10,1);
%M�thode 1
sum2 = sum(x.*x);
%M�thode 2
sum2 = x'*x ; %multiplication matricielle 

%5. 	Si A = rand(4) (i.e., matrice carr�e), d�terminez le nombre d'�l�ments de A sup�rieur � 0.5.
A = rand(4);
%M�thode 1
indxBig = find(A > 0.5);
numBig = length(indxBig);
%M�thode 2
BigYesNo = A > 0.5;
numBig = sum(A(:));  % ou bien sum(sum(A));
