function numA =  chainesF(caract)
%manipulation des chaînes de caractères

%caract = 'azertyuaop';  %créer une chaîne
%caract = input('please enter a character string ', 's')
long = length(caract)   %evaluer la longueur

caract = [caract 's'];  %ajouter un caratère à la fin
                        %on aurait pu le faire differement ex:


lesAs = findstr(caract, 'a');
numA = length(lesAs) ;  %idetifier le nombre des 'a's

