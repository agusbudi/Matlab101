function [ratioref,ratio] = comparelength()
%comparaison des ratios des longueurs obtenu de deux images

	%importation du premier fichier d'image dans une fenetre graphique
	
	figure  %ouverture d'une fenetre
	pixels = imread('skeletonvrai.bmp');    %lecture d'une image
	image(pixels) ;                         %affichage
	axis equal
	
	[xref, yref] = ginput(4) %les coordonnées des 'cliques'- 
                             % 4 fois (x et y)
	
	ratioref = calculate_ratio(xref, yref);
	disp(['reference ratio is ' num2str(ratioref)]);
	
	
	%importation du 2eme fichier d'image dans une fenetre graphique
	
	pixels = imread('skeleton.jpg');    %lecture d'une image
	image(pixels) ; 
	axis equal
	
	[xtest, ytest] = ginput(4)
	
	ratio = calculate_ratio(xtest, ytest);
	disp(['test ratio is ' num2str(ratio)]);
	
	%le program principal finit ici 

%%%%%%%%%%%%%%% Le(s) SOUS-FONCTION(S) %%%%%%%%%%%%%%%%%%%%%%%%%%%%

function r = calculate_ratio(x, y)
%sous fonction qui calcule la ratio des longueurs 

	%1ere longueur 
	ddx1 =  x(2) - x(1);
	ddy1 =  y(2) - y(1);
	length1= sqrt((ddx1*ddx1) + (ddy1*ddy1));
	%2eme longueur 
	ddx2 =  x(4) - x(3);
	ddy2 =  y(4) - y(3);
	length2= sqrt((ddx2*ddx2) + (ddy2*ddy2));
	
	r = length2/length1 ; %ratio de la 2eme à la premiere






