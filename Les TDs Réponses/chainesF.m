function numA =  chainesF(caract)
%manipulation des cha�nes de caract�res

%caract = 'azertyuaop';  %cr�er une cha�ne
%caract = input('please enter a character string ', 's')
long = length(caract)   %evaluer la longueur

caract = [caract 's'];  %ajouter un carat�re � la fin
                        %on aurait pu le faire differement ex:


lesAs = findstr(caract, 'a');
numA = length(lesAs) ;  %idetifier le nombre des 'a's

