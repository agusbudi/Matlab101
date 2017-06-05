function[moyenne,ecart] = statperso(A)
%stats sur les donnees

moyenne = mean(A)
%calcule de la moyenne

m = sum(sum(A)/prod(size(A));

function e = f_ecarttype(A)
%calcule de l'ecart type

e = std(A(:));
