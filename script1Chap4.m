%r�ponse � question 1 Chap4 Les Boucles IF (script1.m)

A = rand(6, 4); %on g�n�re une matrice de valeurs al�atoires

if A(1) > 0.5   %on test si la 1ere �l�ment d'A est sup�rieur � 0.5
    Anew = A - 0.5;      %si oui on ajoute 10 � A
else            %sinon ...
    Anew = A ;      %... on multiplie A par -1
end