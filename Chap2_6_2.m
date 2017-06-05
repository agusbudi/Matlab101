%QChapter 2 Section 6.2
%questions on logical operators
clear 

%Q1
A = rand(4,3);

lesBons = A > 0.2; %crée une matrice Boolean 1 = vrai; 0 = faux

newA = A.*lesBons ; % multiplication terme à terme

%Q2
%méthode 1
lesDiffs = A ~= A(1,1);
newA2 = A.*lesDiffs;

%méthode 2
 
lesDifIX = find(A ~= A(1)); % donne les indices ou la cond est vrai
theAnswer = A(lesDifIX);
