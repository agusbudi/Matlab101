function [normdon]= normalisation(D)
% normalisation

Diagonal = diag(max(D));
normdon = D/Diagonal;
   