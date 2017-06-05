function[ymax,ymin]= matmax_min(X)
%calcule du max et du min d'une matrice

if nargin ~=1
   error('il faut 1 parametre d''entree ')
else
   ymax = max(max(X));
   ymin = min(X(:));   % une rapelle des deux methodes
end
