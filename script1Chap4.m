%réponse à question 1 Chap4 Les Boucles IF (script1.m)

A = rand(6, 4); %on génère une matrice de valeurs aléatoires

if A(1) > 0.5   %on test si la 1ere élément d'A est supérieur à 0.5
    Anew = A - 0.5;      %si oui on ajoute 10 à A
else            %sinon ...
    Anew = A ;      %... on multiplie A par -1
end