
%manipulation des cha�nes de caract�res

%caract = 'azertyuaop';  %cr�er une cha�ne
caract = input('please enter a character string ', 's')
long = length(caract)   %evaluer la longueur

caract = [caract 's'];  %ajouter un carat�re � la fin
                        %on aurait pu le faire differement ex:
%caract(long+1) = 's';

% if long > 4
%     first4 = caract(1:4); %extraire les 4 premiers 
% end
% 
% if long > 2
%     last2 = caract(long-1:long); %extraire les 2 derniers de la chaine d'origine
%                                  %sinon, pour extraire les derniers 2 de la
%                                  %chaine actuel: (la question �tait
%                                  %ambigue!)
%     %last2 = caract(long:end);
% end

lesAs = findstr(caract, 'a');
numA = length(lesAs) ;  %idetifier le nombre des 'a's

% if numA >0 %s'il y a bien des a
%     caract(lesAs) = 'A';
% end
%     